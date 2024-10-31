import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/core/networking/api_service.dart';
import 'package:advance_flutter/core/models/user_model.dart';
import 'package:advance_flutter/core/networking/end_points.dart';
import 'package:advance_flutter/feature/sign_up/data/models/sign_up_data.dart';
import 'package:advance_flutter/feature/sign_up/data/repos/signup_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SignUpRepoImplem implements SignupRepo {
  final ApiService apiService;

  SignUpRepoImplem(this.apiService);
  @override
  Future<Either<Failure, UserModel>> signUp(
      {required SignUpData signUpData}) async {
    try {
      var result = await apiService.post(
        endPoints: signUpEndPoints,
        body: {
          'name': signUpData.name,
          'email': signUpData.email,
          'phone': signUpData.phone,
          'gender': 0,
          'password': signUpData.password,
          'password_confirmation': signUpData.confirmPassword,
        },
      );
      return right(UserModel.fromJson(result));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
