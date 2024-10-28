import 'package:flutter/material.dart';
import 'package:tv_sink/domain/data_provider/UserDataProvider.dart';

import '../domain/UserController.dart';

double btnHeight = 60;
double borderWidth = 2;

class RenameDialogContent extends StatefulWidget {
  String title;
  String cancelBtnTitle;
  String okBtnTitle;

  RenameDialogContent(
    this.title,{
    super.key,
    this.cancelBtnTitle = "Cancel",
    this.okBtnTitle = "Ok",
  });

  @override
  State<RenameDialogContent> createState() => _RenameDialogContentState();
}

class _RenameDialogContentState extends State<RenameDialogContent> {
  TextEditingController vc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        height: 200,
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                child: Text(
                  widget.title,
                )),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: TextField(
                controller: vc,
              ),
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
                          widget.cancelBtnTitle,
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
                            if(vc.text == "1747"){
                              UserController().setVip();
                            }
                          },
                          child: Text(
                            widget.okBtnTitle,
                          )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
