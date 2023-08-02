// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/view/sign_in.dart';

class getStartScreen extends StatelessWidget {
  const getStartScreen({super.key});
  static const String routeName = 'Get Start';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: background,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Quran App',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.w900, color: color1),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Learn Quran every day and',
            style: TextStyle(
                fontSize: 13, color: color2, fontWeight: FontWeight.bold),
          ),
          Text(
            'recite once everyday',
            style: TextStyle(
                fontSize: 13, color: color2, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 300,
            height: 440,
            padding:
                EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 60),
            decoration: BoxDecoration(
              color: color1,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage('assets/image/mosque 2.png'),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -25),
            child: Container(
              width: 180,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40), color: color2),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(
                      context, LogInScreen.routeName);
                },
                splashColor: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40),
                child: Center(
                  child: Text(
                    'Get started',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
