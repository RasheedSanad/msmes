import 'package:dartz/dartz.dart';
//
import '../entities/service_entity.dart';
import '../repositories/home_repository.dart';
import '../../../../core/error/app_failure.dart';

class GetServicesUsecase {
  final HomeRepository repository;

  GetServicesUsecase(this.repository);

  Future<Either<AppFailure, List<ServiceEntity>>> execute() async {
    return await repository.getServices();
  }
}
