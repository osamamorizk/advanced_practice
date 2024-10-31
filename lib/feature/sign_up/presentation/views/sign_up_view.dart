import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/widgets/have_account.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/widgets/sign_up_actions.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/widgets/sign_up_listener.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/widgets/signup_form.dart';
import 'package:advance_flutter/feature/sign_up/presentation/views/widgets/signup_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpacing(50.h),
              SignupTexts(),
              verticalSpacing(30.h),
              SignupForm(),
              verticalSpacing(16.h),
              SignUpActions(),
              verticalSpacing(10.h),
              HaveAccount(),
              verticalSpacing(16.h),
              SignUpListener(),
            ],
          ),
        ),
      ),
    );
  }
}
