import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/view/get_start.dart';
import 'package:quran_app/view/home.dart';
import 'package:quran_app/view/notification.dart';
import 'package:quran_app/view/quran.dart';
import 'package:quran_app/view/settings.dart';
import 'package:quran_app/view/sign_in.dart';

import 'view/player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: background,
      ),
      debugShowCheckedModeBanner: false,
      home: getStartScreen(),
      routes: {
        getStartScreen.routeName: (context) => const getStartScreen(),
        LogInScreen.routeName: (context) => LogInScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        NotificationScreen.routeName: (context) => const NotificationScreen(),
        SettingScreen.routeName: (context) => const SettingScreen(),
        QuranScreen.routeName: (context) => const QuranScreen(),
        PlayerScreen.routeName: (context) => PlayerScreen(),
      },
    );
  }
}
