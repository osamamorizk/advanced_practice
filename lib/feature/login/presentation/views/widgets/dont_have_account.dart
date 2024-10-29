import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Don\'t have an account?  ',
          style: TextStyles.font13GreyNormal,
        ),
        TextSpan(
          text: 'Sign Up',
          style:
              TextStyles.font14blueNormal.copyWith(fontWeight: FontWeight.w500),
          recognizer: TapGestureRecognizer(),
        ),
      ]),
    );
  }
}
