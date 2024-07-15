import 'package:ecommerceapp/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiClient extends GetConnect implements GetxService{
  final String appBaseUrl;
  late String token;

  late Map<String,String> _mainHeaders ;
  ApiClient({required this.appBaseUrl,}){
    baseUrl =appBaseUrl;
    timeout = const Duration(seconds: 30);
    token=AppConstants.TOKEN;
    _mainHeaders={
      "Content-type":'application/json; charset=UTF' ,
      'Authorization':'Bearer $token'
    };
  }
  Future<Response> getData(String uri,) async{
    try{
      Response response =  await get(uri) ;
      return response;
    }
    catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }

}