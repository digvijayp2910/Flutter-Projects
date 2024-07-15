import 'package:flutter/material.dart';

class EmployeeData extends StatelessWidget {
  EmployeeData({
    required this.id,
    required this.employeeName,
    required this.employeeAge,
  }) {
    List<String> nameParts = employeeName.split(' ');

    if (nameParts.isNotEmpty) {
      firstLetter = nameParts[0].substring(0, 1);
      if (nameParts.length > 1) {
        lastLetter = nameParts[1].substring(0, 1);
      }
    }
  }

  final int id;
  final String employeeName;
  final int employeeAge;
  late String firstLetter = '';
  late String lastLetter = '';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: 20,
                  // backgroundColor: Colors.grey,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 7,
                  left: 8,
                  child: Text(
                    '$firstLetter$lastLetter',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            Container(width: 130, child: Text(employeeName)),
            SizedBox(width: 20),
            Text(employeeAge.toString()),
          ],
        ),
      ),
    );
  }
}
