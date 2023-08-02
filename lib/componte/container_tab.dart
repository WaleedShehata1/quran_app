import 'package:flutter/material.dart';

import '../constant.dart';

class ContainerTab extends StatelessWidget {
  ContainerTab(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.onTap});
  VoidCallback onTap;
  String text1;
  String text2;
  String text3;
  String text4;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(
          start: 30,
          top: 15,
          bottom: 15,
          end: 15,
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold, color: color1),
                ),
                Text(
                  text2,
                  style: const TextStyle(fontSize: 11, color: color1),
                ),
                Text(
                  text3,
                  style: const TextStyle(fontSize: 11, color: color1),
                ),
              ],
            ),
            Text(
              text4,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: color1),
            )
          ],
        ),
      ),
    );
  }
}
