import 'package:flutter/material.dart';

class CustomStepWidget extends StatelessWidget {
  const CustomStepWidget(
      {Key? key,
        required this.borderColor,
        required this.textColor,
        this.isChecked = false,
        this.onPressed, required this.radiusSize1, required this.radiusSize2});

  final Color borderColor;
  final Color textColor;
  final bool? isChecked;
  final VoidCallback? onPressed;
  final double radiusSize1;
  final double radiusSize2;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radiusSize1,
      backgroundColor: borderColor,
      child: CircleAvatar(
          backgroundColor: isChecked! ? Color(0xff194C6C) : Colors.white,
          radius: radiusSize2,
          child: Offstage()),
    );
  }
}
