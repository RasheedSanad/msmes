import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:msmes_app/core/constants/app_constant.dart';
import 'package:msmes_app/core/error/app_exception.dart';
import 'package:msmes_app/features/home/data/datasources/home_remote_data_source.dart';
import 'package:msmes_app/features/home/data/models/consultant_model.dart';
import 'package:msmes_app/features/home/data/models/service_model.dart';

import '../../../../helpers/read_json.dart';
import '../../../../helpers/test_helper.mocks.dart';
import 'package:http/http.dart' as http;

void main() {
  late MockHttpClient mockHttpClient;
  late HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  setUp(() {
    mockHttpClient = MockHttpClient();
    homeRemoteDataSourceImpl = HomeRemoteDataSourceImpl(client: mockHttpClient);
  });

  group(
    'get current services: ',
    () {
      test('should return services model when the response code is 200',
          () async {
        // arrange
        when(mockHttpClient.get(Uri.parse(AppConstant.services))).thenAnswer(
          (_) async => http.Response(
            readJson("helpers/dummy_data/dummy_services_response.json"),
            200,
            headers: {'content-type': 'application/json; charset=utf-8'},
          ),
        );
        // act
        final result = await homeRemoteDataSourceImpl.getServices();
        // assert
        expect(result, isA<List<ServiceModel>>());
      });

      //
      test(
          'should throw  a server exception when the response code is 404 or other',
          () async {
        // arrange
        when(mockHttpClient.get(Uri.parse(AppConstant.services))).thenAnswer(
          (_) async => http.Response("Not Found", 404),
        );
        // act
        final result = homeRemoteDataSourceImpl.getServices();

        // assert
        expect(result, throwsA(isA<ServerException>()));
      });
    },
  );

  group('get current consultants', () {
    test(
      'should return consultants model when the response code is 200',
      () async {
        // arrange
        when(mockHttpClient.get(Uri.parse(AppConstant.consultants)))
            .thenAnswer((_) async => http.Response(
                  readJson(
                      'helpers/dummy_data/dummy_consultants_response.json'),
                  200,
                  headers: {'content-type': 'application/json; charset=utf-8'},
                ));
        // act
        final result = await homeRemoteDataSourceImpl.getConsultants();

        // assert
        expect(result, isA<List<ConsultantModel>>());
      },
    );
  });
}
