import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:msmes_app/core/error/app_failure.dart';
import 'package:msmes_app/features/home/data/models/service_model.dart';
import 'package:msmes_app/features/home/presentation/bloc/home_bloc.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetServicesUsecase mockGetServicesUsecase;
  late HomeBloc homeBloc;

  setUp(() {
    mockGetServicesUsecase = MockGetServicesUsecase();
    homeBloc = HomeBloc(mockGetServicesUsecase);
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

  group(
    'get current services: ',
    () {
      test(
        'initial state should be empty',
        () {
          // assert
          expect(homeBloc.state, HomeEmpty());
        },
      );

      blocTest<HomeBloc, HomeState>(
        'should emit [HomeLoading, HomeLoadFailure] when get data is unsuccessful',
        build: () {
          when(mockGetServicesUsecase.execute())
              .thenAnswer((_) async => Left(ServerFailure()));

          return homeBloc;
        },
        act: (bloc) => bloc.add(OnGetServices()),
        wait: const Duration(milliseconds: 500),
        expect: () => [
          HomeLoading(),
          HomeLoadFailure(ServerFailure()),
        ],
      );
    },
  );
}
