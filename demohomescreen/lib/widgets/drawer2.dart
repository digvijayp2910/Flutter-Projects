import 'package:flutter/material.dart';

class Drawer2 extends StatefulWidget {
  const Drawer2({super.key});

  @override
  State<Drawer2> createState() => _Drawer2State();
}

class _Drawer2State extends State<Drawer2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff194C6C), // Replace with your colors
                Color(0xff2D6B77), // Replace with your colors
              ],
            ),
          ),
          child: Column(
                children: [
          ExpansionTile(title: Text("abcd"),leading: Icon(Icons.add),)
                ],
              ),
        ),
    );
  }
}
