import 'package:demohomescreen/widgets/status_icon_widget.dart';
import 'package:flutter/material.dart';

import 'mypiechart.dart';

class PyChartContainer extends StatelessWidget {
  const PyChartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(

        children: [
          Container(padding: EdgeInsets.all(5),child: Text("EPAP",style: TextStyle(fontSize: 20),)),
          Divider(color: Colors.black,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(width:200,height:200,child: MyPieChart()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StatusIconWidget(
                      text: 'Created',
                      icon: Icons.insert_drive_file_outlined, // Replace with the icon you want to use
                      color:  Color(0xffBB6BD9), // Replace with the color you want for the background
                    ),
                    StatusIconWidget(
                      text: 'In Progress',
                      icon: Icons.cached_sharp, // Replace with the icon you want to use
                      color: Color(0xFF9F431F), // Replace with the color you want for the background
                    ),
                    StatusIconWidget(
                        text: 'Completed',
                        icon: Icons.done, // Replace with the icon you want to use
                        color: Color(0xff28C76F)
                    ), // Replace with the color you want for the background
                  ]),

            ],
          ),


          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: <Widget>[
          //     buildStatusIndicator(Colors.purple, 'Created', '43.3%'),
          //     buildStatusIndicator(Colors.red, 'In Progress', '28.1%'),
          //     buildStatusIndicator(Colors.green, 'Completed', '13.6%'),
          //   ],
          // ),
        ],
      ),
    );
  }
  Widget buildStatusIndicator(Color color, String title, String percentage) {
    return Row(
      children: <Widget>[
        Icon(Icons.brightness_1, color: color, size: 12),
        SizedBox(width: 4),
        Text(title),
        SizedBox(width: 4),
        Text(percentage),
        SizedBox(width: 4),
        Icon(Icons.arrow_upward, color: Colors.green, size: 16),
      ],
    );
  }

}
