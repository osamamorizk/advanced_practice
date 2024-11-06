import 'package:advance_flutter/core/helpers/spacing.dart';

import 'package:advance_flutter/feature/home/presentation/views/widgets/blue_banner.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/doc_category_list_view.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_list_view.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_speciality.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 30),
          child: Column(
            children: [
              HomeUpBar(),
              BlueBanner(),
              verticalSpacing(24.h),
              DoctorSpeciality(),
              verticalSpacing(16.h),
              DoctorCategryListView(),
              verticalSpacing(16.h),
              DoctorListView(),
            ],
          ),
        ),
      ),
    );
  }
}
