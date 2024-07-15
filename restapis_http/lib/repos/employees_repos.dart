import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:http/http.dart' as http;


import '../api_client.dart';

class EmployeeRepo  {
  final ApiClient apiClient;

  EmployeeRepo({required this.apiClient});

  Future<http.Response> getDataofAllEmployees() async {
    return await apiClient.getDataofAllEmployees();
  }

  Future<http.Response> postDataofAllEmployees(String name, String salary, String age) async {
    Map<String, dynamic> data = {
      "name": name,
      "salary": salary,
      "age": age,
    };
    return await apiClient.postDataofAllEmployees(data);
  }

  Future<http.Response> putDataofAllEmployees(
      String id,
      String name,
      String age,
      String salary,
      ) async {
    Map<String, dynamic> data = {
      "name": name,
      "salary": salary,
      "age": age,
    };
    return await apiClient.putDataofAllEmployees(id, data);
  }

  Future<http.Response> deleteDataofAllEmployees(String id) async {
    return await apiClient.deleteDataofAllEmployees(id);
  }
}