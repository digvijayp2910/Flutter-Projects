import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restapis/api_client.dart';

import '../model/employeemodel.dart';
import '../repos/employees_repos.dart';

class EmployeeController extends GetxController {
  final EmployeeRepo employeeRepo;

  EmployeeController(this.employeeRepo);

  List<Data> _employees = [];

  List<Data> get employees => _employees;

  bool _isLoaded = false;

  bool get isLoaded => _isLoaded;

  @override
  void onInit() {
    print("JAY SHREE RAM !!");
    super.onInit();
    getDataofAllEmployees();
  }

  Future<void> getDataofAllEmployees() async {
    try {
      final response = await employeeRepo.getDataofAllEmployees();
      if (response.statusCode == 200) {
        final Map<String, dynamic> parsedData = json.decode(response.body);
        _employees = EmployeeModel.fromJson(parsedData as Map<String, dynamic>).employees ?? [];
        print(_employees.length);
        print("success");
        _isLoaded = true;
      } else {
        print("not got");
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> postDataofAllEmployees(String name, String salary, String age) async {
    try {
      final response = await employeeRepo.postDataofAllEmployees(name, salary, age);
      if (response.statusCode == 200) {
        showMessage("Success", "New employee Added Successfully", Colors.greenAccent);
        print("Successful post req");
      } else {
        print("Not successful post " + response.statusCode.toString());
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> putDataofAllEmployees(
      String id,
      String name,
      String age,
      String salary,
      ) async {
    try {
      final response = await employeeRepo.putDataofAllEmployees(id, name, age, salary);
      if (response.statusCode == 200) {
        showMessage("Edit Success", "Employee edited Successfully", Colors.greenAccent);
        print("Successful put req");
      } else if (response.statusCode == 429) {
        showMessage("Failed", "too many Attempts, try once again", Colors.yellow);
        print("Not Successful put req");
      } else {
        showMessage("Alert", "Employee edition failed", Colors.red);
        print("Not successful put " + response.statusCode.toString());
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> deleteDataofAllEmployees(String id) async {
    try {
      final response = await employeeRepo.deleteDataofAllEmployees(id);
      if (response.statusCode == 200) {
        showMessage("Delete Success", "Employee deleted Successfully", Colors.greenAccent);
        print("Successful delete req");
      } else if (response.statusCode == 429) {
        showMessage("Failed", "too many Attempts, try once again", Colors.yellow);
        print("Not Successful del req");
      } else if (response.statusCode == 301) {
        showMessage("Not exists", "Employee with this Id does not exists", Colors.yellow);
        print("Not exists data for del req");
      } else {
        showMessage("Alert", "Employee not deleted Successfully", Colors.red);
        print("failed delete req");
        print("Not successful delete " + response.statusCode.toString());
      }
      update();
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> showMessage(String title, String message, Color backgroundColor) async {
    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
    );
  }
}