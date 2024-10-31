import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/dont_have_account.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/email_and_password.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/login_actions.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/login_bloc_listener.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/terms_conditions.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpacing(50.h),
                WelcomeText(),
                verticalSpacing(36.h),
                EmailAndPassword(),
                verticalSpacing(16.h),
                LoginActions(),
                verticalSpacing(50.h),
                TermsAndConditions(),
                verticalSpacing(22.h),
                DontHaveAccount(),
                LoginBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
