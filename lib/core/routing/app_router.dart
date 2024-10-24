import 'package:advance_flutter/core/routing/routes.dart';
import 'package:advance_flutter/feature/login/presentation/views/login_view.dart';
import 'package:advance_flutter/feature/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => LoginView());
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
