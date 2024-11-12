import 'package:advance_flutter/core/helpers/cashe_helper.dart';
import 'package:advance_flutter/core/helpers/constants.dart';
import 'package:advance_flutter/core/networking/dio_factory.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = DioFactory.getDio();

  ApiService() {
    dio.options = BaseOptions(
        //   headers: {
        //   "Authorization": "Bearer ${CasheHlper.getData(key: Constants.userToken)}",
        // }
        baseUrl: 'https://vcare.integration25.com/api/');
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
