import 'package:flutter/widgets.dart';

class GradientBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff6ea8fc), Color(0xff51e85e)],
        ),
      ),
    );
  }
}
