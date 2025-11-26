import 'package:bookly_app/api/api_constants.dart';
import 'package:dio/dio.dart';

class ApiServices {
  Dio _dio;
  ApiServices(this._dio);
  
  Future<Map<String,dynamic>> get({required String endPoint})async{
    var response=await _dio.get('${ApiConstants.baseUrl}$endPoint');
    return response.data;
  } 
  
}