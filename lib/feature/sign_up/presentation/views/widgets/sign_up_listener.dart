import 'package:advance_flutter/core/helpers/extension.dart';
import 'package:advance_flutter/core/routing/routes.dart';
import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:advance_flutter/feature/sign_up/presentation/manger/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpListener extends StatelessWidget {
  const SignUpListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupILoading) {
          showDialog(
            context: context,
            builder: (context) => Center(
              child: CircularProgressIndicator(
                color: ColorsManger.mainBlue,
              ),
            ),
          );
        } else if (state is SignupFailure) {
          errorState(context, state.errorMessage);
        } else if (state is SignupSuccess) {
          context.pop();
          context.pushNamed(Routes.homeView);
        }
      },
      child: const SizedBox.shrink(),
    );
  }

  void errorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        alignment: Alignment.center,
        titlePadding: EdgeInsets.all(0),
        contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 50,
        ),
        content: Text(
          error,
          style: TextStyles.font16GreyNormal,
        ),
        actions: [
          TextButton(
            onPressed: (context.pop),
            child: Text(
              textAlign: TextAlign.center,
              'Got it',
              style: TextStyles.font16WhiteSemiBold.copyWith(
                color: ColorsManger.mainBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
