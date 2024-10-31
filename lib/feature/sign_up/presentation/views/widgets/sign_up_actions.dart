import 'package:advance_flutter/core/widgets/custom_action_button.dart';
import 'package:advance_flutter/feature/sign_up/data/models/sign_up_data.dart';
import 'package:advance_flutter/feature/sign_up/presentation/manger/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpActions extends StatelessWidget {
  const SignUpActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            if (context.read<SignupCubit>().formKey.currentState!.validate()) {
              context.read<SignupCubit>().signUp(
                  signUpData: SignUpData(
                      phone: context.read<SignupCubit>().numberController.text,
                      name: context.read<SignupCubit>().nameController.text,
                      email: context.read<SignupCubit>().emailController.text,
                      password:
                          context.read<SignupCubit>().passwordController.text,
                      confirmPassword: context
                          .read<SignupCubit>()
                          .passwordConfirmController
                          .text,
                      gender: 0));
            }
          },
          text: 'Create Account',
        ),
      ],
    );
  }
}
