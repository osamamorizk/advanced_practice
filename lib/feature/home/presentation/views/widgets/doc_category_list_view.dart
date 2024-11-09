import 'package:advance_flutter/feature/home/presentation/manger/cubit/home_cubit.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorCategryListView extends StatelessWidget {
  const DoctorCategryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.specializationList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 0 : 16),
                  child: DoctorCategryItem(
                    specializationModel: state.specializationList[index],
                  ),
                );
              },
            );
          } else if (state is HomeFailure) {
            return Text(state.errorMessage);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
