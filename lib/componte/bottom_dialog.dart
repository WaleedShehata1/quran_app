// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran_app/view/get_start.dart';
import 'package:quran_app/view/sign_in.dart';

import '../constant.dart';
import '../view/notification.dart';
import '../view/settings.dart';

class BottomDialog extends StatelessWidget {
  double? paddingVerrtical;
  double? radius;
  double? paddingHorizontal;
  Color? backgroundColor;
  BottomDialog({
    Key? key,
    this.backgroundColor,
    this.paddingVerrtical,
    this.radius,
    this.paddingHorizontal,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Dialog(
          insetPadding:
              const EdgeInsets.only(left: 0, right: 0, bottom: 0, top: 471),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(30), topStart: Radius.circular(30))),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Never Miss  the Jannah !!!',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: color1),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stay close to Allah each and every time by enabling notification',
                    style: TextStyle(fontSize: 18, color: color1),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 40, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30), color: color1),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Enable Notification',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Not Now',
                        style: TextStyle(
                            color: color1,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
