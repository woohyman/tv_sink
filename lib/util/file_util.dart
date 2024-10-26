import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

Future<String> get localPath async {
  final _path = await getTemporaryDirectory();
  return _path.path;
}

Future<File> get localFile async {
  final path = await localPath;
  return File('$path/apk');
}

Future<bool> checkPermission() async {
  bool isStorage = true;
  bool isRequestInstallPackages = true;
  //检查是否已有读写内存权限
  PermissionStatus statusStorage = await Permission.storage.status;
  //允许安装未知权限
  PermissionStatus statusRequestInstallPackages =
  await Permission.requestInstallPackages.status;
  //判断如果还没拥有读写权限就申请获取权限
  if (statusStorage != PermissionStatus.granted) {
    isStorage = await Permission.storage.request().isGranted;
  }
  //判断允许安装未知权限
  if (statusRequestInstallPackages != PermissionStatus.granted) {
    isRequestInstallPackages =
    await Permission.requestInstallPackages.request().isGranted;
  }

  if (isStorage == true && isRequestInstallPackages == true) {
    return true;
  } else {
    return false;
  }
}
