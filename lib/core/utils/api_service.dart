import 'package:dio/dio.dart';

class ApiService{
  ApiService(this.dio);
  final Dio dio;
  final baseUrl='https://www.googleapis.com/books/v1/';
  Future<Map<String,dynamic>> get({required endpoint}) async{
    var response = await dio.get('$baseUrl$endpoint');
    return response.data;
  }

}