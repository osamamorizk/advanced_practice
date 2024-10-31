import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options = BaseOptions(baseUrl: 'https://vcare.integration25.com/api/');
  }

  Future<Map<String, dynamic>> get({required String endPoints}) async {
    Response response = await dio.get(endPoints);
    return response.data;
  }

  Future<Map<String, dynamic>> post(
      {required String endPoints, required Map body}) async {
    Response response = await dio.post(endPoints, data: body);
    return response.data;
  }
}
