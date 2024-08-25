import 'package:dartz/dartz.dart';
import 'package:msmes_app/core/error/app_failure.dart';
import '../entities/consultant_entity.dart';
import '../entities/service_entity.dart';

abstract class HomeRepository {
  Future<Either<AppFailure, List<ConsultantEntity>>> getConsultants();
  Future<Either<AppFailure, List<ServiceEntity>>> getServices();
}
