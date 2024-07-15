import 'package:get/get.dart';

import '../api_client.dart';

class EmployeeRepo extends GetxService{
  final ApiClient apiClient;
  EmployeeRepo({required this.apiClient});

  Future<Response> getDataofAllEmployees() async{
    return await apiClient.getDataofAllEmployees("/employees");
  }

  Future<Response> postDataofAllEmployees(String name, String salary, String age) async{
    Map<String,String> map= {"name": name, "salary" :salary, "age": age};
    return await apiClient.postDataofAllEmployees("/create",map);
  }

  Future<Response> putDataofAllEmployees(String id,String name,String age,String salary) async{
    Map<String,String> map= {"name": name, "salary" :salary, "age": age};
    return await apiClient.putDataofAllEmployees("/update/$id",map);
  }

  Future<Response> deleteDataofAllEmployees(String id) async{
    return await apiClient.deleteDataofAllEmployees("/delete/$id");
  }
}