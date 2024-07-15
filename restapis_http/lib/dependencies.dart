import 'package:get/get.dart';
import 'package:restapis/api_client.dart';
import 'package:restapis/controllers/employee_controller.dart';
import 'package:restapis/repos/employees_repos.dart';

Future<void> init() async{

  Get.put( ApiClient("https://dummy.restapiexample.com/api/v1"),);
  print("APi client is initialized");

  // Get.lazyPut(() => EmployeeRepo(apiClient:Get.find()));
  //
  // print("EmployeeRepo is initialized");
  //
  // Get.lazyPut(() => EmployeeController(Get.find<EmployeeRepo>()));
  // print("Employeecontroller is initialized");

}