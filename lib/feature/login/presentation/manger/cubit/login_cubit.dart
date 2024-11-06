import 'package:advance_flutter/core/models/user_model.dart';
import 'package:advance_flutter/feature/login/data/repos/login_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login({required String email, required String password}) async {
    emit(LoginLoading());
    var result = await loginRepo.login(email: email, password: password);
    result.fold(
      (fialure) {
        emit(LoginFailure(errorMessage: fialure.errorMessage));
      },
      (success) {
        emit(LoginSuccess(userModel: success));
      },
    );
  }
}
