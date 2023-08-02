import 'package:flutter/material.dart';

import '../componte/container_quran.dart';
import '../constant.dart';
import '../text_Form_Field.dart';
import 'home.dart';
import 'player.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});
  static const String routeName = 'Quran Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Al-Fatiah',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: color1),
                              ),
                              Text(
                                'Verse   7',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: color1,
                                ),
                              ),
                              Text(
                                '(The Opener)',
                                style: TextStyle(fontSize: 14, color: color1),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share_outlined,
                                color: color1,
                                size: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.play_arrow,
                                color: color1,
                                size: 30,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.book,
                                color: color1,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 430,
                    child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            ContainerQuran(
                              text1: 'بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ',
                              text2:
                                  'In the Name of Allah-the Most Compassionate,Most Merciful',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1: 'ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ',
                              text2:
                                  'All praise is for Allah—Lord of all worlds,',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1: 'ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ',
                              text2: 'the Most Compassionate, Most Merciful,',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1: 'مَٰلِكِ يَوۡمِ ٱلدِّينِ',
                              text2: 'Master of the Day of Judgment',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1: 'إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ',
                              text2:
                                  'You ˹alone˺ we worship and You ˹alone˺ we ask for help',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1: 'ٱهۡدِنَاٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ  ',
                              text2: 'Guide us along the Straight Path,',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            ContainerQuran(
                              text1:
                                  'صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ وَلَا ٱلضَّآلِّينَ ',
                              text2:
                                  'the Path of those You have blessed—not those You are displeased  with, or those who are astray.',
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ]),
                    ),
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
                        onTap: () {},
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
    );
  }
}
