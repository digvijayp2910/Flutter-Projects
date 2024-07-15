import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MetricCard extends StatelessWidget {
  final String? title;
  final String ?value;
  final double? width;
  final IconData? icon;

  const MetricCard({super.key, this.title, this.value,this.icon , this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: width?? 200,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height:40,width:40,decoration: BoxDecoration(color: Color(0xffECF7FC) ),child:  Icon(icon, color: Color(0xff1B506D))),
          SizedBox(height: 10,),// Replace with actual icon
         title != null ? Text(title!) :const Offstage(),
          Text(
            value??'',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}