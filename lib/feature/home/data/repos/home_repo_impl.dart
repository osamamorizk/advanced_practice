import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/core/networking/api_service.dart';
import 'package:advance_flutter/core/networking/end_points.dart';
import 'package:advance_flutter/feature/home/data/models/specialization_model.dart';
import 'package:advance_flutter/feature/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});
  @override
  Future<Either<Failure, List<SpecializationModel>>> getSpecialization() async {
    try {
      var result = await apiService.get(endPoints: specializationEndPoints);
      List<SpecializationModel> specializationList = [];
      for (var element in result['data']) {
        specializationList.add(SpecializationModel.fromJson(element));
      }

      return right(specializationList);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
