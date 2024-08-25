import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';
import 'package:msmes_app/features/home/domain/usecases/get_services_usecase.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeRepository mockHomeRepository;
  late GetServicesUsecase usecase;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    usecase = GetServicesUsecase(mockHomeRepository);
  });
  final services = [
    const ServiceEntity(
        title: 'الاستشارات',
        content: 'لديك سوال وتبحث عن اجابة، ستجد الاجابة في اي مجال تريد'),
    const ServiceEntity(
        title: 'الارشاد',
        content: 'المشورة والتوجية في كل اقسام مشروعك واصنع قصة نجاح معنا'),
  ];
  test(
    "Should get current services from repository",
    () async {
      // arrange
      when(mockHomeRepository.getServices())
          .thenAnswer((_) async => Right(services));
      // act
      final result = await usecase.execute();
      // assert
      expect(result, Right(services));
    },
  );
}
