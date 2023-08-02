import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/tabs/tab_hijb.dart';
import 'package:quran_app/tabs/tab_page.dart';
import 'package:quran_app/tabs/tab_para.dart';
import 'package:quran_app/tabs/tab_surah.dart';
import 'package:quran_app/text_Form_Field.dart';
import 'package:quran_app/view/get_start.dart';
import 'package:quran_app/view/player.dart';
import 'package:quran_app/view/quran.dart';
import 'package:quran_app/view/sign_in.dart';

import '../componte/bottom_dialog.dart';
import '../componte/dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      showDialog(
          barrierColor: Colors.transparent,
          context: context,
          builder: (context) {
            return BottomDialog();
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            return await showDialog(
                                barrierColor: Colors.transparent,
                                context: context,
                                builder: (context) {
                                  return DefaultDialog();
                                });
                          },
                          child: Image.asset(
                            'assets/image/Vector2.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Text(
                          'Quran App',
                          style: TextStyle(
                              fontSize: 24,
                              color: color1,
                              fontWeight: FontWeight.w800),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: 30,
                          child: DefaultFormField(
                              suffixIcon: const Icon(
                                Icons.search,
                                color: color1,
                              ),
                              controller: TextEditingController(),
                              validate: (c) {}),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Asalamu Alaikum !!!',
                      style: TextStyle(
                          fontSize: 13,
                          color: color2,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Mohamed Rasith',
                      style: TextStyle(
                          fontSize: 18,
                          color: color1,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, QuranScreen.routeName);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        width: double.infinity,
                        height: 130,
                        decoration: BoxDecoration(
                          color: color3,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pushReplacementNamed(
                                              context, QuranScreen.routeName);
                                        },
                                        child: const Icon(Icons.menu_book),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                                context, QuranScreen.routeName);
                                          },
                                          child: const Text(
                                            'Last Read',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: color1,
                                            ),
                                          ))
                                    ],
                                  ),
                                  const Text(
                                    'Al-Fatiah',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: color1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Ayah no. 1',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: color1,
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacementNamed(
                                      context, QuranScreen.routeName);
                                },
                                child: Image.asset(
                                  'assets/image/Vector.png',
                                  fit: BoxFit.fill,
                                ),
                              )
                            ]),
                      ),
                    ),
                    Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: color3, width: 2.5))),
                        width: double.infinity,
                        child: Transform.translate(
                          offset: const Offset(0, 2),
                          child: const TabBar(
                            unselectedLabelColor: color2,
                            labelColor: color1,
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            indicatorColor: color1,
                            dragStartBehavior: DragStartBehavior.down,
                            tabs: [
                              Tab(
                                text: 'Surah',
                              ),
                              Tab(
                                text: 'Para',
                              ),
                              Tab(
                                text: 'Page',
                              ),
                              Tab(
                                text: 'Hijb',
                              ),
                            ],
                          ),
                        )),
                    Container(
                      width: double.infinity,
                      height: 260,
                      child: const TabBarView(children: [
                        TabSurah(),
                        TabPara(),
                        TabPage(),
                        TabHijb(),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsetsDirectional.all(10),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(40)),
                            child: Image.asset(
                              'assets/image/Group 2.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, QuranScreen.routeName);
                          },
                          child: Container(
                            padding: EdgeInsetsDirectional.all(10),
                            width: 55,
                            height: 55,
                            decoration: BoxDecoration(
                                color: color1,
                                borderRadius: BorderRadius.circular(40)),
                            child: Image.asset(
                              'assets/image/Group 1.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, PlayerScreen.routeName);
                          },
                          child: Container(
                            padding: EdgeInsetsDirectional.all(10),
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                color: color3,
                                borderRadius: BorderRadius.circular(40)),
                            child: Image.asset(
                              width: 50,
                              height: 50,
                              'assets/image/Group.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
