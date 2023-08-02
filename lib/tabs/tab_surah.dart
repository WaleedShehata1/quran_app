import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quran_app/componte/container_tab.dart';
import 'package:quran_app/constant.dart';
import 'package:quran_app/view/quran.dart';

import '../componte/container_break.dart';

class TabSurah extends StatelessWidget {
  const TabSurah({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ContainerTab(
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                QuranScreen.routeName,
              );
            },
            text1: 'Al-Fatiah',
            text2: 'Verse   7',
            text3: '(The Opener)',
            text4: "الْفَاتِحَة",
          ),
          ContainerBreak(),
          ContainerTab(
            onTap: () {},
            text1: 'Al-Baqarah',
            text2: 'Verse  286',
            text3: '(The Cow)',
            text4: "البقرة",
          ),
          ContainerBreak(),
          ContainerTab(
            onTap: () {},
            text1: 'Ali-Imran',
            text2: 'Verse  200',
            text3: '(Family of Imran)',
            text4: "آل عِمْرَان",
          ),
          ContainerBreak(),
          ContainerTab(
            onTap: () {},
            text1: 'Al-Fatiah',
            text2: 'Verse   7',
            text3: '(The Opener)',
            text4: "الْفَاتِحَة",
          ),
          ContainerBreak(),
          ContainerTab(
            onTap: () {},
            text1: 'Al-Baqarah',
            text2: 'Verse  286',
            text3: '(The Cow)',
            text4: "البقرة",
          ),
          ContainerBreak(),
          ContainerTab(
            onTap: () {},
            text1: 'Ali-Imran',
            text2: 'Verse  200',
            text3: '(Family of Imran)',
            text4: "آل عِمْرَان",
          ),
          ContainerBreak(),
        ],
      ),
    );
  }
}
