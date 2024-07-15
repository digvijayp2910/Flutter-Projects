import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.text,
      });

  final IconData icon;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          const SizedBox(
            width: 5,
          ),
          SmallText(text: text)
        ],
      ),
    );
  }
}
