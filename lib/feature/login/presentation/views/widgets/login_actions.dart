import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:advance_flutter/core/widgets/custom_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginActions extends StatelessWidget {
  const LoginActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot Password?',
            style: TextStyles.font14blueNormal,
          ),
        ),
        verticalSpacing(32.h),
        CustomButton(
          text: 'Login',
        ),
      ],
    );
  }
}
