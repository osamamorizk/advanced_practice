import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService(this.dio) {
    dio.options = BaseOptions(headers: {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzMxMDEwOTc4LCJleHAiOjE3MzEwOTczNzgsIm5iZiI6MTczMTAxMDk3OCwianRpIjoiUVBXOFBETXlOeU01ZHFpZSIsInN1YiI6IjIyNTYiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.3LVOlN4jN3MYORiS4shs5pBzT0jaQp_-XV4Wz639fwI",
    }, baseUrl: 'https://vcare.integration25.com/api/');
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
