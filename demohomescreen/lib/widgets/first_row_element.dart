import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstRowElement extends StatelessWidget {
  FirstRowElement({super.key, this.name});
  String? name;

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.topLeft,
      padding: EdgeInsets.only(top: 16.0,left: 16.0,bottom: 0),
      width: 400,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft,
            child: const Text(
              'Good Afternoon  Amol',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
      Align(alignment: Alignment.topLeft,
        child: const Text(
            'Here is your overview',
            style: TextStyle(color: Colors.grey),
          ),),
          Align(alignment: Alignment.bottomRight,child: Container(child: Image.asset('myimg.png',height: 100,width: 100,),),)
        ],
      ),
    );
  }
}
