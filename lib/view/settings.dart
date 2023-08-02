import 'package:flutter/material.dart';

import '../constant.dart';
import 'home.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});
  static const String routeName = 'Setting Screen';

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
    with SingleTickerProviderStateMixin {
  bool _account = false;
  bool _Notification = false;
  bool _Privacy = false;
  bool _Help = false;
  bool _About = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, HomeScreen.routeName);
                        },
                        child: Image.asset(
                          'assets/image/Group0.png',
                          width: 25,
                          height: 25,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text(
                        "Settings",
                        style: TextStyle(
                            fontSize: 24,
                            color: color1,
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.notifications,
                    color: color1,
                    size: 20,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _account = !_account;
                });
              },
              child: _account
                  ? Container(
                      height: 100,
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Account',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _Notification = !_Notification;
                });
              },
              child: _Notification
                  ? Container(
                      height: 100,
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    _Privacy = !_Privacy;
                  });
                },
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: _Privacy ? 70 : 150,
                    margin: const EdgeInsetsDirectional.symmetric(
                        horizontal: 20, vertical: 15),
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 5, vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    alignment: AlignmentDirectional.center,
                    child: Column(
                      children: [
                        Text(
                          'Privacy & Security',
                          style: TextStyle(
                            fontSize: 18,
                            color: color1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))),
            InkWell(
              onTap: () {
                setState(() {
                  _Help = !_Help;
                });
              },
              child: _Help
                  ? Container(
                      height: 100,
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Help & Support',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Help & Support',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _About = !_About;
                });
              },
              child: _About
                  ? Container(
                      height: 100,
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  : Container(
                      margin: const EdgeInsetsDirectional.symmetric(
                          horizontal: 20, vertical: 15),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 5, vertical: 15),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'About',
                        style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ]),
        ),
      ),
    );
  }
}
