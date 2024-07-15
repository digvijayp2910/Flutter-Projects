import 'package:ecommerceapp/utils/colors.dart';
import 'package:ecommerceapp/utils/dimensions.dart';
import 'package:ecommerceapp/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final double heightMultiplyer;

  const ExpandableTextWidget({super.key, required this.text, required this.heightMultiplyer});

  final String text;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 6.52;
  String buttonText = "Show more";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    double txtHeight =  textHeight*widget.heightMultiplyer;
    if (widget.text.length > txtHeight) {
      firstHalf = widget.text.substring(0, txtHeight.toInt());
      secondHalf =
          widget.text.substring(txtHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.isEmpty
            ? SmallText(
                text: firstHalf,
                color: AppColors.paraColor,
                size: Dimensions.font16,
              )
            : Column(
                children: [
                  SmallText(
                    text: hiddenText
                        ? "$firstHalf..."
                        : firstHalf + secondHalf,
                    color: AppColors.paraColor,
                    size: Dimensions.font16,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hiddenText = !hiddenText;
                      });
                      setState(() {
                        buttonText = hiddenText ? "Show more" : "Show less";
                      });
                    },
                    child: Row(
                      children: [
                        SmallText(
                          text: buttonText,
                          color: AppColors.mainColor,
                        ),
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
