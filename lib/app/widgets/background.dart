import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xffdeedfa), Color(0xffc5e5c3)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
      ),
    );
  }
}
