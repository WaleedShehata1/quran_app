import 'package:flutter/material.dart';

import '../constant.dart';

class ContainerBreak extends StatelessWidget {
  const ContainerBreak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 2,
      decoration: BoxDecoration(
        color: color3,
      ),
    );
  }
}
