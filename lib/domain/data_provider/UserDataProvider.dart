import 'package:get/get.dart';
import '../../data/share_preference/SharePreference.dart';
import '../model/User.dart';

//用于管理用户数据
class UserDataProvider {
  final user = Rx<TvUser>(TvUser());
  final isVip = false.obs;

  factory UserDataProvider.fromGet() {
    return Get.find<UserDataProvider>();
  }

  UserDataProvider() {
    fetchAppSetting(keyIsVip).then((value) {
      isVip.value = value;
    });
  }
}
