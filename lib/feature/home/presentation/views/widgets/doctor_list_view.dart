import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: index == 0 ? 0 : 16),
            child: DoctorItem(),
          );
        },
      ),
    );
  }
}
