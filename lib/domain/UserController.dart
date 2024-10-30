import 'package:flutter/material.dart';

import '../data/share_preference/SharePreference.dart';
import '../widgets/input_password_dialog.dart';
import 'data_provider/UserDataProvider.dart';

class UserController {
  void setVip() {
    final provider = UserDataProvider.fromGet();
    provider.isVip.value = true;
    saveAppSetting(keyIsVip, true);
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return InputPasswordDialog("请输入密码");
      },
    );
  }
}
