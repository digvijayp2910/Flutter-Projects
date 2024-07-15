import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   const TaskTile({
    super.key,
    required this.size,
    required this.txt, this.time, this.des,  this.press,
  });

  final Size size;
  final TextTheme txt;
  final String? time, des;
  final Function? press;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 8,
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(children: [
              Container(
                alignment: Alignment.center,
                width: size.width * 0.1,
                height: double.maxFinite,
                color: Colors.red,
                child: Text(
                  "$time",
                  style: txt.headlineSmall?.copyWith(color: Colors.white),
                ),
              ),
              Expanded(
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "$des",
                    style: txt.titleLarge,
                  ),
                ),
              ),
              InkWell(onTap: (){press!();},
                child: Container(
                    alignment: Alignment.center,
                    width: size.width * 0.1,
                    height: double.maxFinite,
                    color: Colors.red,
                    child: const Icon(Icons.delete,color: Colors.white,)
                ),
              ),
            ]),
          ),
        ),
        const SizedBox(height: 15,)
      ],
    );
  }
}