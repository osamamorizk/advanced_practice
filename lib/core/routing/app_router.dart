import 'package:advance_flutter/core/di/dependency_injection.dart';
import 'package:advance_flutter/core/routing/routes.dart';
import 'package:advance_flutter/feature/home/data/repos/home_repo_impl.dart';
import 'package:advance_flutter/feature/home/presentation/manger/cubit/home_cubit.dart';
import 'package:advance_flutter/feature/home/presentation/views/home_view.dart';
import 'package:advance_flutter/feature/login/data/repos/login_repo_impl.dart';
import 'package:advance_flutter/feature/login/presentation/manger/cubit/login_cubit.dart';
import 'package:advance_flutter/feature/login/presentation/views/login_view.dart';
import 'package:advance_flutter/feature/onboarding/onboarding_view.dart';
import 'package:advance_flutter/feature/sign_up/data/repos/sign_up_repo_implem.dart';
import 'package:advance_flutter/feature/sign_up/presentation/manger/cubit/signup_cubit.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingView(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                HomeCubit(getIt.get<HomeRepoImpl>())..getSpecialization(),
            child: HomeView(),
          ),
        );
      case Routes.signUpView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SignupCubit(
              getIt.get<SignUpRepoImplem>(),
            ),
            child: SignUpView(),
          ),
        );
      case Routes.loginView:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(
                    getIt.get<LoginRepoImpl>(),
                  ),
                  child: LoginView(),
                ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route Found for${settings.name}'),
            ),
          ),
        );
    }
  }
}
