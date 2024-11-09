import 'package:advance_flutter/core/errors/failures.dart';
import 'package:advance_flutter/feature/home/data/models/specialization_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SpecializationModel>>> getSpecialization();
}
