import 'package:advance_flutter/core/helpers/extension.dart';
import 'package:advance_flutter/core/routing/routes.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:advance_flutter/feature/onboarding/widgets/custom_get_started_button.dart';
import 'package:advance_flutter/feature/onboarding/widgets/logo_and_tile.dart';
import 'package:advance_flutter/feature/onboarding/widgets/logo_with_opacity_and_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              LogoAndTitle(),
              SizedBox(
                height: 41.h,
              ),
              LogoWithOpacityAndImage(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.greyNormal13,
                    ),
                    SizedBox(height: 32.h),
                    CustomButton(
                      onPressed: () {
                        context.pushNamed(Routes.loginView);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
