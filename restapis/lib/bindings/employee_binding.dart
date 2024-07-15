import 'package:get/get.dart';
import 'package:restapis/controllers/employee_controller.dart';
import 'package:restapis/employee_page.dart';
import 'package:restapis/repos/employees_repos.dart';

class EmployeeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => EmployeeRepo(apiClient:Get.find()));
    Get.lazyPut(() => EmployeeController(Get.find<EmployeeRepo>()));
  }

}