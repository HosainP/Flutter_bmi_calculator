import 'package:flutter/material.dart';
import 'const.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({Key? key, required this.onPress, required this.icon})
      : super(key: key);

  final VoidCallback onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: const CircleBorder(),
      fillColor: kGrayColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
