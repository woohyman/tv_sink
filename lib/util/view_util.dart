import 'package:flutter/material.dart';

import '../widgets/input_password_dialog.dart';

showAlertDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return InputPasswordDialog("请输入密码");
    },
  );
}
