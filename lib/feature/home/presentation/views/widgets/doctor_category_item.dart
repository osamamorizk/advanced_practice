import 'package:advance_flutter/core/helpers/assets.dart';
import 'package:advance_flutter/core/helpers/spacing.dart';
import 'package:advance_flutter/core/theaming/colors.dart';
import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:advance_flutter/feature/home/data/models/specialization_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCategryItem extends StatelessWidget {
  const DoctorCategryItem({super.key, required this.specializationModel});
  final SpecializationModel specializationModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: 32,
          backgroundColor: ColorsManger.greyNotification,
          child: Image.asset(
            Assets.imagesDocCategory,
            height: 35,
          ),
        ),
        verticalSpacing(10.h),
        Text(
          specializationModel.name,
          style: TextStyles.font14blackNormal,
        )
      ],
    );
  }
}
