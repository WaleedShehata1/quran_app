// ignore_for_file: non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:quran_app/view/get_start.dart';
import 'package:quran_app/view/sign_in.dart';

import '../constant.dart';
import '../view/notification.dart';
import '../view/settings.dart';

class DefaultDialog extends StatelessWidget {
  double? paddingVerrtical;
  double? radius;
  double? paddingHorizontal;
  Color? backgroundColor;
  DefaultDialog({
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
          insetPadding: const EdgeInsets.only(
            left: 20,
            right: 180,
          ),
          backgroundColor: backgroundColor ?? Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 25)),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsetsDirectional.all(5),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          'assets/image/Group 5.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'Waleed Mohamed',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/Vector4.png',
                        fit: BoxFit.fill,
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        'ًExplore',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, NotificationScreen.routeName);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.notifications,
                        size: 30,
                        color: color1,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'ًNotification',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, SettingScreen.routeName);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.settings,
                        size: 30,
                        color: color1,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'ًSettings',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(
                        context, LogInScreen.routeName);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        size: 30,
                        color: color1,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'ًLog Out',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, getStartScreen.routeName);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: color1,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'ًExit',
                        style: TextStyle(
                          fontSize: 13,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
