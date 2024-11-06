import 'package:advance_flutter/core/theaming/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpeciality extends StatelessWidget {
  const DoctorSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctor Speciality',
          style: TextStyles.font18blackSemiBold,
        ),
        Spacer(),
        Text(
          'See All',
          style: TextStyles.font14blueNormal.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
