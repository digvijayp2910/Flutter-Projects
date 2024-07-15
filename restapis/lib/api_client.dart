import 'dart:convert';

import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  final String appBaseUrl;

  late String token;

  late Map<String, String> _mainHeaders;

  ApiClient(this.appBaseUrl) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = '';
    _mainHeaders = {
      "Content-type": "application/json ; charset=utf ",
      "Authorization": "Bearer $token"
    };
  }

  Future<Response> getDataofAllEmployees(String uri) async {
    try {
      Response response = await get(uri,);
      print('Got the respone');
      // Map<String,dynamic>? jsonData = jsonDecode(response.body);
      // print("jsonData:- ${jsonData}");
      return response;
    } catch (e) {
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

  Future<Response> postDataofAllEmployees(String uri, Map<String,String> map) async {
    try {
      Response response = await post(uri,jsonEncode(map));
      print('Post method successful');
      print(response);
      return response;
    } catch (e) {
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

  Future<Response> putDataofAllEmployees(String uri, Map<String,String> map) async {
    try {
      Response response = await put(uri,jsonEncode(map));
      print('Put method successful');
      print(response);
      return response;
    } catch (e) {
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

  Future<Response> deleteDataofAllEmployees(String id) async {
    try {
      Response response = await delete(id);
      print('Delete method successful');
      print(response);
      return response;
    } catch (e) {
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}
