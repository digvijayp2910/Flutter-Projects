import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  BigText(
      {super.key,
      required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size = 20,
      this.color = const Color(0xFF332d2b)});

  Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: Dimensions.font20,

          overflow: overflow),maxLines: 1,
    );
  }
}
