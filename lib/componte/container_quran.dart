import 'package:flutter/material.dart';
import 'package:quran_app/constant.dart';

class ContainerQuran extends StatelessWidget {
  const ContainerQuran({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text1,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 24,
              color: color1,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text2,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: color1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
