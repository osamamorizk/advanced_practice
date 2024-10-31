import 'package:advance_flutter/core/helpers/app_regex.dart';
import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/widgets/custom_text_form_field.dart';
import 'package:advance_flutter/feature/login/presentation/manger/cubit/login_cubit.dart';
import 'package:advance_flutter/feature/login/presentation/views/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isSecure = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNaumber = false;
  bool hasSpecialCharcter = false;
  bool hasMinLength = false;

  late TextEditingController emailController;
  late TextEditingController passwordController;
  @override
  void initState() {
    emailController = context.read<LoginCubit>().emailController;
    passwordController = context.read<LoginCubit>().passwordController;

    super.initState();
    setUpPassworsController();
  }

  void setUpPassworsController() {
    passwordController.addListener(
      () {
        setState(() {
          hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
          hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
          hasNaumber = AppRegex.hasNumber(passwordController.text);
          hasSpecialCharcter =
              AppRegex.hasSpecialCharacter(passwordController.text);
          hasMinLength = AppRegex.hasMinLength(passwordController.text);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
          ),
          verticalSpacing(20),
          CustomTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isSecure = !isSecure;
                  });
                },
                icon: Icon(isSecure ? Icons.visibility_off : Icons.visibility)),
            obscureText: isSecure,
            hintText: 'Password',
          ),
          verticalSpacing(8),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNaumber: hasNaumber,
            hasSpecialCharcter: hasSpecialCharcter,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
