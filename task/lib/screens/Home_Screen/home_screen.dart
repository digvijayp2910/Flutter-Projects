import 'package:flutter/material.dart';
import 'package:task/screens/Home_Screen/Widgets/columnone.dart';
import 'package:task/screens/Home_Screen/Widgets/columnthree.dart';
import 'package:task/screens/Home_Screen/Widgets/columntwo.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    List<Widget> content = [];

    if (deviceWidth < 400) {
      content.add(const ColumnThree());
    } else if (deviceWidth > 400 && deviceWidth < 750) {
      content = [
        const ColumnTwo(),
        const ColumnThree(),
      ];
    } else {
      content = [const ColumnOne(), const ColumnTwo(), const ColumnThree()];
    }

    const double appBarHeight = 70.0;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 237, 250, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(appBarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.8),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 3),
                // Changes the shadow offset
              ),
            ],
          ),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "images/appbar.png",
                  height: appBarHeight , // Adjust image size as needed
                  width: appBarHeight , // Adjust image size as needed
                ),
              ],
            ),
            actions: [
              Image.asset(
                "images/img.png",
                height: appBarHeight , // Adjust image size as needed
                width: appBarHeight -10, // Adjust image size as needed
              ),
            ],
            // Replace 'Icons.search' with your desired icon
          ),
        ),
      ),

      body: Row(
        children: content,
      ),
    );
  }
}
