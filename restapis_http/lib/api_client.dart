
import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiClient  {
  final String baseUrl;
  late String token;

  ApiClient(this.baseUrl) {
    token = '';
  }

  Future<http.Response> getDataofAllEmployees() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/employees'),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer $token',
        },
      );
      return response;
    } catch (e) {
      return http.Response(e.toString(), 1);
    }
  }

  Future<http.Response> postDataofAllEmployees(Map<String, dynamic> data) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/create'),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(data),
      );
      return response;
    } catch (e) {
      return http.Response(e.toString(), 1);
    }
  }

  Future<http.Response> putDataofAllEmployees(String id, Map<String, dynamic> data) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/update/$id'),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(data),
      );
      return response;
    } catch (e) {
      return http.Response(e.toString(), 1);
    }
  }

  Future<http.Response> deleteDataofAllEmployees(String id) async {
    try {
      final response = await http.delete(
        Uri.parse('$baseUrl/delete/$id'),
        headers: {
          'Content-type': 'application/json; charset=utf-8',
          'Authorization': 'Bearer $token',
        },
      );
      return response;
    } catch (e) {
      return http.Response(e.toString(), 1);
    }
  }
}