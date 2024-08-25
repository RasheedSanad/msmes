import 'package:get_it/get_it.dart';
import 'package:msmes_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:msmes_app/features/home/data/repositories/home_repository.dart';
import 'package:msmes_app/features/home/domain/repositories/home_repository.dart';
import 'package:msmes_app/features/home/domain/usecases/get_consultants_usecase.dart';
import 'package:msmes_app/features/home/domain/usecases/get_services_usecase.dart';
import 'package:msmes_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:http/http.dart' as http;

import '../../features/home/presentation/bloc_consultants/home_consultants_bloc.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // ! features
  // * Home
  // bloc
  locator.registerFactory(() => HomeBloc(locator()));
  locator.registerFactory(() => HomeConsultantsBloc(locator()));
  // usecase
  locator.registerLazySingleton(() => GetServicesUsecase(locator()));
  locator.registerLazySingleton(() => GetConsultantsUsecase(locator()));
  // repsoitory
  locator.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: locator()));
  // data sources
  locator.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(client: locator()));

  // ! core
  // http
  locator.registerLazySingleton(() => http.Client());
}
