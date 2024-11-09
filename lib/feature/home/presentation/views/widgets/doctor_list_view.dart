import 'package:advance_flutter/feature/home/presentation/manger/cubit/home_cubit.dart';
import 'package:advance_flutter/feature/home/presentation/views/widgets/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorListView extends StatelessWidget {
  const DoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state is HomeSuccess) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.specializationList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: index == 0 ? 0 : 16),
                  child: DoctorItem(
                      specializationModel: state.specializationList[index]),
                );
              },
            ),
          );
        } else if (state is HomeFailure) {
          return Text(state.errorMessage);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
