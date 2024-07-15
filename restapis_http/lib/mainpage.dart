import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restapis/employee_page.dart';
import 'package:restapis/post_form.dart';
import 'package:restapis/put_form.dart';

import 'controllers/employee_controller.dart';
import 'delete_form.dart';

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          'Employee App',style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              'Welcome to Employee Application',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Get.toNamed("/employeePage");
                },
                child: Container(height: 40,width: 80,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10)),

                  child: Text('GET', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {Get.toNamed("/postForm");},
                child: Container(height: 40,width: 80,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Text('POST', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {Get.toNamed("/putForm");},
                child: Container(height: 40,width: 80,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),alignment: Alignment.center,
                  child: Text('PUT', style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () {Get.toNamed("/deleteEmp");},
                child: Container(height: 40,width: 80,alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(10),
                  child: Text('Delete', style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* class MainPage extends StatelessWidget {
  const MainPage ({super.key});

  @override
  Widget build(BuildContext context) {
    print("CAlling get all employess");
    Get.find<EmployeeController>().getDataofAllEmployees();
    print("Called all employess");
  return Scaffold(
  appBar: AppBar(
  // TRY THIS: Try changing the color here to a specific color (to
  // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
  // change color while the other colors stay the same.
  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  title: Text("Employee App"),
  ),
  body: SingleChildScrollView(child: EmployeeDetails()),
  );
  }
}
*/
