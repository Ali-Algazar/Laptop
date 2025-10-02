import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Response> get(String url) async {
    return await _dio.get(url);
  }

  Future<Response> post(String url, Map<String, dynamic> data) async {
    return await _dio.post(url, data: data);
  }

  Future<Response> put(String url, Map<String, dynamic> data) async {
    return await _dio.put(url, data: data);
  }

  Future<Response> delete(String url) async {
    return await _dio.delete(url);
  }
}
