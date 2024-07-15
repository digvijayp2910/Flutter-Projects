import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restapis/widgets/employee_data.dart';

import 'controllers/employee_controller.dart';

class EmployeePage extends GetWidget<EmployeeController> {
  EmployeePage({super.key});
  // var x = Get.find<EmployeeController>();

  @override
  Widget build(BuildContext context) {
    // Get.find<EmployeeController>().getDataofAllEmployees();
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: true),
      body: Column(
        children: [
          Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(5),
          child: Text("List of Employees",style: TextStyle(color: Colors.redAccent,fontSize: 15)),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        ),
          Expanded(
            child: GetBuilder<EmployeeController>(
                initState: (_)=>controller.getDataofAllEmployees(),
                builder: (controller) {
              return controller.isLoaded
                  ? ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  // shrinkWrap: true,
                  itemCount: controller.employees?.length,
                  itemBuilder: (context, index) {
                    final data = controller.employees![index];
                    return EmployeeData(
                        id: data.id!,
                        employeeName: data.employeeName!,
                        employeeAge: data.employeeAge!);
                  })
                  : Center(
                child: CircularProgressIndicator(),
              );
            }),
          )
          // Expanded(child: SingleChildScrollView(child: EmployeeDetails())),
        ],
      )
    );
  }
}
