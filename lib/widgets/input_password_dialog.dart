import 'package:flutter/material.dart';
import '../domain/UserController.dart';

double btnHeight = 60;
double borderWidth = 2;

class InputPasswordDialog extends StatelessWidget {
  InputPasswordDialog(
    this.title, {
    super.key,
    this.cancelBtnTitle = "Cancel",
    this.okBtnTitle = "Ok",
  });

  final String title;
  final String cancelBtnTitle;
  final String okBtnTitle;
  final _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      content: Container(
          margin: const EdgeInsets.only(top: 20),
          height: 200,
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Container(alignment: Alignment.center, child: Text(title)),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: TextField(controller: _textEditingController),
              ),
              Container(
                // color: Colors.red,
                height: btnHeight,
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Column(
                  children: [
                    Container(
                      // 按钮上面的横线
                      width: double.infinity,
                      color: Colors.grey,
                      height: borderWidth,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MaterialButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            cancelBtnTitle,
                          ),
                        ),
                        Container(
                          // 按钮中间的竖线
                          width: borderWidth,
                          color: Colors.grey,
                          height: btnHeight - borderWidth - borderWidth,
                        ),
                        MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              if (_textEditingController.text == "1747") {
                                UserController().setVip();
                              }
                            },
                            child: Text(okBtnTitle)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
