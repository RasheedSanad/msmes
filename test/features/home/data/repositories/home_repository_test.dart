import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:msmes_app/core/error/app_exception.dart';
import 'package:msmes_app/core/error/app_failure.dart';
import 'package:msmes_app/features/home/data/models/service_model.dart';
import 'package:msmes_app/features/home/data/repositories/home_repository.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeRemoteDataSource mockHomeRemoteDataSource;
  late HomeRepositoryImpl homeRepositoryImpl;

  setUp(() {
    mockHomeRemoteDataSource = MockHomeRemoteDataSource();
    homeRepositoryImpl =
        HomeRepositoryImpl(remoteDataSource: mockHomeRemoteDataSource);
  });
  final testServiceModel = ServiceModel(
    title: 'الاستشارات',
    content: "لديك سوال وتبحث عن اجابة، ستجد الاجابة في اي مجال تريد",
  );
  final testServicesModel = [
    testServiceModel,
    ServiceModel(
      title: 'الارشاد',
      content: "المشورة والتوجية في كل اقسام مشروعك واصنع قصة نجاح معنا",
    ),
  ];

  group('get current services: ', () {
    test(
      'should get services when a call to data source is successful',
      () async {
        // arrange
        when(mockHomeRemoteDataSource.getServices())
            .thenAnswer((_) async => testServicesModel);
        // act
        final result = await homeRepositoryImpl.getServices();
        // assert
        expect(result, equals(Right(testServicesModel)));
      },
    );
    test(
      'should return server failure when a call to data source is unsuccessful',
      () async {
        // arrange
        when(mockHomeRemoteDataSource.getServices())
            .thenThrow(ServerException());
        // act
        final result = await homeRepositoryImpl.getServices();
        // assert
        expect(result, equals(Left(ServerFailure())));
      },
    );
    test(
      'should get services when a call to data source is successfully',
      () async {
        // arrange
        when(mockHomeRemoteDataSource.getServices())
            .thenThrow(const SocketException("No internet"));
        // act
        final result = await homeRepositoryImpl.getServices();
        // assert
        expect(result, equals(Left(NoInternetConnectionFailure())));
      },
    );
  });
}
