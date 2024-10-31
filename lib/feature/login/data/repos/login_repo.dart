import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/core/models/user_model.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<Failure, UserModel>> login(
      {required String email, required String password});
}
