// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:msmes_app/core/error/app_exception.dart';

import 'package:msmes_app/core/error/app_failure.dart';
import 'package:msmes_app/core/extensions/extensions.dart';
import 'package:msmes_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:msmes_app/features/home/domain/entities/consultant_entity.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';

import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;
  HomeRepositoryImpl({
    required this.remoteDataSource,
  });
  @override
  Future<Either<AppFailure, List<ConsultantEntity>>> getConsultants() async {
    try {
      final response = await remoteDataSource.getConsultants();
      return Right(response);
    } on AppException catch (e) {
      return Left(e.toAppException().handleExceptionToFailure());
    } on SocketException {
      return Left(NoInternetConnectionFailure());
    }
  }

  @override
  Future<Either<AppFailure, List<ServiceEntity>>> getServices() async {
    try {
      final response = await remoteDataSource.getServices();
      return Right(response);
    } on AppException catch (e) {
      return Left(e.toAppException().handleExceptionToFailure());
    } on SocketException {
      return Left(NoInternetConnectionFailure());
    }
  }
}
