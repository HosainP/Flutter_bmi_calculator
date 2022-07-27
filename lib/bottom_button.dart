import 'dart:ffi';

import 'package:flutter/material.dart';
import 'const.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key, required this.func, required this.text})
      : super(key: key);

  final String text;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        margin: const EdgeInsets.only(top: 5.0),
        color: kPinkColor,
        height: 80.0,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 27.0,
            ),
          ),
        ),
      ),
    );
  }
}
