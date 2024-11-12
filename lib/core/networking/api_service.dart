import 'package:advance_flutter/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = DioFactory.getDio();

  // ApiService() {
  //   dio.options = BaseOptions(
  //       //   headers: {
  //       //   "Authorization": "Bearer ${CasheHlper.getData(key: Constants.userToken)}",
  //       // }
  //       );
  // }

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
