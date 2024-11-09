import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:advance_flutter/feature/home/data/models/specialization_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.specializationModel});
  final SpecializationModel specializationModel;
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
              specializationModel.doctors[0].name,
              style: TextStyles.font18blackBlod,
            ),
            verticalSpacing(5.h),
            Text(
                '${specializationModel.doctors[0].degree}| ${specializationModel.doctors[0].phone}',
                style: TextStyles.font13GreyMedium),
            Text(specializationModel.doctors[0].email,
                style: TextStyles.font13GreyMedium),
          ],
        )
      ],
    );
  }
}
