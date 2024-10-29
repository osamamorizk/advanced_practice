import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging, you agree to our ',
            style: TextStyles.font13GreyNormal,
          ),
          TextSpan(
            text: 'Terms & Conditions  ',
            style: TextStyles.font14blackMedium,
          ),
          TextSpan(
            text: 'and ',
            style: TextStyles.font13GreyNormal,
          ),
          TextSpan(
            text: 'PrivacyPolicy.',
            style: TextStyles.font14blackMedium,
          ),
        ],
      ),
    );
  }
}
