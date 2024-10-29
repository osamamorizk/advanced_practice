import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/widgets/custom_text_form_field.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/dont_have_account.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/login_actions.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/terms_conditions.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/welcome_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var formKey = GlobalKey<FormState>();
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 50.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WelcomeText(),
                verticalSpacing(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'Email',
                      ),
                      verticalSpacing(20),
                      CustomTextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isSecure = !isSecure;
                              });
                            },
                            icon: Icon(isSecure
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        obscureText: isSecure,
                        hintText: 'Password',
                      ),
                      verticalSpacing(16.h),
                      LoginActions(),
                      verticalSpacing(50.h),
                      TermsAndConditions(),
                      verticalSpacing(22.h),
                      DontHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
