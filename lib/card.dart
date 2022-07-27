import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.func,
    required this.child,
    required this.color,
  }) : super(key: key);

  final Widget child;

  final VoidCallback func;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: func,
        child: Container(
          margin: const EdgeInsets.all(10.0),
          // padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
