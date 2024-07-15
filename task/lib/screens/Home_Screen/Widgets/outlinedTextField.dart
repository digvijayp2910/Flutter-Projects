import 'package:flutter/material.dart';

class OutlinedTextField extends StatelessWidget {
  final String labelText;

  const OutlinedTextField({Key? key, required this.labelText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFB2BCF1)),
        borderRadius: BorderRadius.circular(5.0),),


      child: TextFormField(
        decoration: InputDecoration(
          hintText: labelText,
          border: InputBorder.none,

        ),
      ),

    );}
}