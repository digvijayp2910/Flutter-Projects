import 'package:flutter/material.dart';

class StatusIconWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  const StatusIconWidget({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(icon, color: Colors.white,),
        ),
        SizedBox(width: 8),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
