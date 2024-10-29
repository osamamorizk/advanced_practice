import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogoAndTitle extends StatelessWidget {
  const LogoAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgsLogo),
        SizedBox(width: 8.w),
        Text(
          'Docdoc',
          style: TextStyles.font24blackBlod,
        ),
      ],
    );
  }
}
