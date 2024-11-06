import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCategryListView extends StatelessWidget {
  const DoctorCategryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 0 ? 0 : 16),
            child: DoctorCategryItem(),
          );
        },
      ),
    );
  }
}
