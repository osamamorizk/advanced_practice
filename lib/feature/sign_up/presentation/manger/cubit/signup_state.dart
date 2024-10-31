part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupILoading extends SignupState {}

final class SignupFailure extends SignupState {
  final String errorMessage;

  SignupFailure({required this.errorMessage});
}

final class SignupSuccess extends SignupState {
  final UserModel userModel;

  SignupSuccess({required this.userModel});
}
