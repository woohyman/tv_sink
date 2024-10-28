import 'package:flutter/material.dart';

import '../data/share_preference/SharePreference.dart';
import '../widgets/RenameDialogContent.dart';
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
        return RenameDialog(
          contentWidget: RenameDialogContent(
            "请输入密码",
          ),
        );
      },
    );
  }
}

class RenameDialog extends AlertDialog {
  const RenameDialog({super.key, required Widget contentWidget})
      : super(
          content: contentWidget,
          contentPadding: EdgeInsets.zero,
        );
}
