import 'package:flutter/material.dart';
import 'package:quran_app/view/home.dart';

import '../constant.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const String routeName = 'Notification Screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    "Notification",
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
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsetsDirectional.all(20),
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/image/Mask Group.png',
                  width: 150,
                  height: 100,
                  fit: BoxFit.fill,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'You will be tested!',
                      style: TextStyle(
                        color: color1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'NO Exception',
                      style: TextStyle(
                        color: color1,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Mufti Menk',
                      style: TextStyle(color: color1, fontSize: 14),
                    ),
                    Text(
                      'YouTube',
                      style: TextStyle(color: Colors.red, fontSize: 14),
                    ),
                    Text(
                      '2 min ago',
                      style: TextStyle(color: color1, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 10),
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Dont miss Salah !!  ",
                      style: TextStyle(
                          fontSize: 14,
                          color: color1,
                          fontWeight: FontWeight.w800),
                    ),
                    Text("2 hour ago"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Its time for zuhr and dont miss the reward for praying zuhr benefits of praying zuhr prayer continue reading.... "),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 20, vertical: 10),
            padding: const EdgeInsetsDirectional.symmetric(
                horizontal: 5, vertical: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Today’s task  ",
                      style: TextStyle(
                          fontSize: 14,
                          color: color1,
                          fontWeight: FontWeight.w800),
                    ),
                    Text("4 hour ago"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Get this huge reward in Jannah for reciting this surah...."),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
