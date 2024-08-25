import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:msmes_app/core/utils/enum_sex.dart';
import 'package:msmes_app/features/home/domain/entities/consultant_entity.dart';
import 'package:msmes_app/features/home/domain/usecases/get_consultants_usecase.dart';

import '../../../../helpers/test_helper.mocks.dart';

void main() {
  late MockHomeRepository mockHomeRepository;
  late GetConsultantsUsecase usecase;

  setUp(() {
    mockHomeRepository = MockHomeRepository();
    usecase = GetConsultantsUsecase(mockHomeRepository);
  });

  final consultants = [
    const ConsultantEntity(
      name: 'نجلاء',
      lastJob: 'سكرتيرية تنفذية في المؤسسة الوطنية للتمويل الأصغر في اليمن',
      imageUrl: '',
      starts: 5,
      sex: EnumSex.female,
    ),
    const ConsultantEntity(
      name: 'خالد',
      lastJob: 'خبير في التسويق الالكتروني',
      imageUrl: '',
      starts: 5,
      sex: EnumSex.male,
    ),
  ];
  test(
    'Sould get current consultants from repository',
    () async {
      // arrange
      when(mockHomeRepository.getConsultants())
          .thenAnswer((_) async => Right(consultants));
      // act
      final result = await usecase.execute();
      // assert
      expect(result, Right(consultants));
    },
  );
}
