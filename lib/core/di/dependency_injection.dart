import 'package:advance_flutter/core/networking/api_service.dart';
import 'package:advance_flutter/feature/login/data/repos/login_repo_impl.dart';
import 'package:advance_flutter/feature/sign_up/data/repos/sign_up_repo_implem.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
getItSetup() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<LoginRepoImpl>(
    LoginRepoImpl(
      getIt.get<ApiService>(),
    ),
  );
  getIt.registerSingleton<SignUpRepoImplem>(
    SignUpRepoImplem(
      getIt.get<ApiService>(),
    ),
  );
}
