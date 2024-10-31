import 'package:advance_flutter/core/helpers/extension.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Already have an account?  ',
          style: TextStyles.font13GreyNormal,
        ),
        TextSpan(
          text: 'Log in',
          style:
              TextStyles.font14blueNormal.copyWith(fontWeight: FontWeight.w500),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              context.pop();
            },
        ),
      ]),
    );
  }
}
