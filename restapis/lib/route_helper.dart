import 'package:get/get.dart';
import 'package:restapis/bindings/employee_binding.dart';
import 'package:restapis/delete_form.dart';
import 'package:restapis/employee_page.dart';
import 'package:restapis/mainpage.dart';
import 'package:restapis/post_form.dart';
import 'package:restapis/put_form.dart';

class RouteHelper{
  static const String initial = '/';

  static List<GetPage> routes= [
    GetPage(name: "/", page: () => MainPage()),
    GetPage(name: "/employeePage", page: () => EmployeePage(), bindings: [
      EmployeeBinding()
    ]),
    GetPage(name: "/postForm", page: () => MyForm(), bindings: [
      EmployeeBinding()
    ]),
    GetPage(name: "/putForm", page: ()=> EditForm(),binding: EmployeeBinding()),
    GetPage(name: "/deleteEmp", page: ()=> DeleteForm(),binding: EmployeeBinding()),

  ];
}