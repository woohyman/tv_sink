import 'package:get/get.dart';
import '../../data/local/share_preference.dart';
import '../model/user_model.dart';

//用于管理用户数据
class UserDataProvider {
  final user = Rx<UserModel>(UserModel());
  final _isVip = false.obs;

  set isVip(bool isVip) {
    saveAppSetting(keyIsVip, true);
    _isVip.value = isVip;
  }

  bool get isVip {
    return _isVip.value;
  }

  factory UserDataProvider.fromGet() {
    return Get.find<UserDataProvider>();
  }

  UserDataProvider() {
    fetchAppSetting(keyIsVip).then((value) {
      _isVip.value = value;
    });
  }
}
