import 'package:advance_flutter/feature/home/data/models/specialization_model.dart';
import 'package:advance_flutter/feature/home/data/repos/home_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeInitial());

  final HomeRepo homeRepo;
  Future<void> getSpecialization() async {
    var result = await homeRepo.getSpecialization();

    result.fold(
      (failure) {
        emit(HomeFailure(errorMessage: failure.errorMessage));
      },
      (specialization) {
        emit(HomeSuccess(specializationList: specialization));
      },
    );
  }
}
