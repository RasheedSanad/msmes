import 'package:mockito/annotations.dart';
import 'package:msmes_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:msmes_app/features/home/domain/repositories/home_repository.dart';
import 'package:http/http.dart' as http;
import 'package:msmes_app/features/home/domain/usecases/get_consultants_usecase.dart';
import 'package:msmes_app/features/home/domain/usecases/get_services_usecase.dart';

@GenerateMocks(
  [
    HomeRepository,
    HomeRemoteDataSource,
    GetServicesUsecase,
    GetConsultantsUsecase,
  ],
  customMocks: [
    MockSpec<http.Client>(as: #MockHttpClient),
  ],
)
void main() {}
