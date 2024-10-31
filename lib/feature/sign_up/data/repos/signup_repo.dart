import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/core/models/user_model.dart';
import 'package:advance_flutter/feature/sign_up/data/models/sign_up_data.dart';
import 'package:dartz/dartz.dart';

abstract class SignupRepo {
  Future<Either<Failure, UserModel>> signUp({required SignUpData signUpData});
}
