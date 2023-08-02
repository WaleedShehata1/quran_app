import 'package:flutter/material.dart';
import 'package:quran_app/view/quran.dart';
import 'package:table_calendar/table_calendar.dart';

import '../constant.dart';
import '../text_Form_Field.dart';
import 'home.dart';

class PlayerScreen extends StatelessWidget {
  PlayerScreen({super.key});
  static const String routeName = 'Player Screen';
  DateTime _toDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    padding: const EdgeInsetsDirectional.only(bottom: 40),
                    decoration: const BoxDecoration(
                        color: color3,
                        borderRadius: BorderRadiusDirectional.only(
                          bottomStart: Radius.circular(20),
                          bottomEnd: Radius.circular(20),
                        )),
                    child: TableCalendar(
                      calendarStyle: const CalendarStyle(
                          outsideDaysVisible: false,
                          todayTextStyle: TextStyle(
                              color: color1, fontWeight: FontWeight.bold),
                          todayDecoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle)),
                      locale: 'en-US',
                      headerStyle: const HeaderStyle(
                        formatButtonVisible: false,
                        titleCentered: true,
                      ),
                      focusedDay: _toDay,
                      rowHeight: 30,
                      firstDay: DateTime.utc(2000, 12, 31),
                      lastDay: DateTime.utc(2040, 12, 31),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.all(15),
                    decoration: const BoxDecoration(
                        color: color3,
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20),
                          bottomEnd: Radius.circular(20),
                        )),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text('Fajr'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(' 5:55am'),
                            ],
                          ),
                          Row(
                            children: const [
                              Text('Zuhr'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(' 1:05pm')
                            ],
                          ),
                          Row(
                            children: const [
                              Text('Ashr'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('4:55pm')
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: const [
                              Text('Magrib'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('6:37pm')
                            ],
                          ),
                          Row(
                            children: const [
                              Text('Isha'),
                              SizedBox(
                                width: 5,
                              ),
                              Text('8:00pm')
                            ],
                          )
                        ],
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.all(15),
                    decoration: const BoxDecoration(
                        color: color3,
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(20),
                          bottomEnd: Radius.circular(20),
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Direction',
                          style: TextStyle(
                              fontSize: 18,
                              color: color1,
                              fontWeight: FontWeight.w800),
                        ),
                        Icon(
                          Icons.near_me,
                          size: 30,
                          color: color1,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsetsDirectional.all(10),
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
                          padding: const EdgeInsetsDirectional.all(10),
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(40)),
                          child: Image.asset(
                            'assets/image/Group 1+.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsetsDirectional.all(15),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: color1,
                              borderRadius: BorderRadius.circular(40)),
                          child: Image.asset(
                            width: 40,
                            height: 40,
                            'assets/image/Group+.png',
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
    );
  }
}
