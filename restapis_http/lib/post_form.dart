import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapis/controllers/employee_controller.dart';

class MyForm extends GetWidget<EmployeeController> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  GlobalKey<FormState> _formkey =  GlobalKey<FormState>();
  // var controller = Get.find<EmployeeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(automaticallyImplyLeading: true),
      body: Column(
        children: [ Container(
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
            'Add New Employee',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                margin: EdgeInsets.only(top: 100),
                child: Form(key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: salaryController,
                        keyboardType: TextInputType.number ,
                        decoration: InputDecoration(
                          labelText: 'Salary',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: ageController,
                        decoration: InputDecoration(
                          labelText: 'Age',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Handle form submission
                          String name = nameController.text;
                          String salary = salaryController.text;
                          String age = ageController.text;

                          print('Name: $name, Salary: $salary, Age: $age');

                          controller.postDataofAllEmployees(name,age,salary);

                          nameController.text="";
                          salaryController.text ="";
                          ageController.text="";


                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue, // Blue background color
                          elevation: 5, // Neumorphic effect
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
