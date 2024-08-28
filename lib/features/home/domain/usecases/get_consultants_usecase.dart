import 'package:dartz/dartz.dart';
//
import '../entities/consultant_entity.dart';
import '../repositories/home_repository.dart';
import '../../../../core/error/app_failure.dart';

class GetConsultantsUsecase {
  final HomeRepository repository;

  GetConsultantsUsecase(this.repository);

  Future<Either<AppFailure, List<ConsultantEntity>>> execute() async {
    return await repository.getConsultants();
  }
}
