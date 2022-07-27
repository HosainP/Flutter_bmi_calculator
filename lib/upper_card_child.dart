import 'package:bmi_calculator/const.dart';
import 'package:flutter/material.dart';

class UpperCardChild extends StatelessWidget {
  const UpperCardChild({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 70.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          text,
          style: kGrayTextStyle,
        ),
      ],
    );
  }
}
