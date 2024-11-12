import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/core/networking/api_service.dart';
import 'package:advance_flutter/core/models/user_model.dart';
import 'package:advance_flutter/core/networking/end_points.dart';
import 'package:advance_flutter/feature/login/data/repos/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepoImpl implements LoginRepo {
  final ApiService apiService;

  LoginRepoImpl(this.apiService);

  @override
  Future<Either<Failure, UserModel>> login(
      {required String email, required String password}) async {
    try {
      var data = await apiService.post(
        endPoints: loginEndPoints,
        body: {'email': email, 'password': password},
      );
      return right(UserModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
