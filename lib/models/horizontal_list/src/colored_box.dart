import 'package:flutter/material.dart';

class MyColoredBox extends StatelessWidget {
  final Color color;

  const MyColoredBox({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        height: 100,
        width: 100,
        color: color
    );
  }
}
