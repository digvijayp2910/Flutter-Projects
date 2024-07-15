import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapis/controllers/employee_controller.dart';

class DeleteForm extends StatelessWidget {
  final TextEditingController idController = TextEditingController();
  var controller = Get.find<EmployeeController>();

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
            'Delete Employee',
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
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: idController,
                        decoration: InputDecoration(
                          labelText: 'Id',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          // Handle form submission
                          String id = idController.text;

                          print('Id: $id');

                          controller.deleteDataofAllEmployees(id);

                          idController.text="";


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
                            'Delete',
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
