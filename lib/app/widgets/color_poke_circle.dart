import 'package:flutter/material.dart';

class ColorPokeCircle extends StatelessWidget {
  Color bgColor;

  ColorPokeCircle(color) {
    this.bgColor = color;
  }
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: 30,
        width: 30,
        color: bgColor,
      ),
    );
  }
}
