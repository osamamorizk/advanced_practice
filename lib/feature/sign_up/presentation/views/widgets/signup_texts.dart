import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class SignupTexts extends StatelessWidget {
  const SignupTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create Account',
          style: TextStyles.font24blueBlod,
        ),
        Text(
          'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
          style: TextStyles.font16GreyNormal,
        ),
      ],
    );
  }
}
