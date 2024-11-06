import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesDoctor,
          height: 100,
        ),
        horizontalSpacing(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dr: Osama Mohamed',
              style: TextStyles.font18blackBlod,
            ),
            verticalSpacing(5.h),
            Text('Degree | 01001218913', style: TextStyles.font13GreyMedium),
            Text('osama@gmail.com', style: TextStyles.font13GreyMedium),
          ],
        )
      ],
    );
  }
}
