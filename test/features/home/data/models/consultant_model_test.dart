import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:msmes_app/core/utils/enum_sex.dart';
import 'package:msmes_app/features/home/data/models/consultant_model.dart';
import 'package:msmes_app/features/home/domain/entities/consultant_entity.dart';

import '../../../../helpers/read_json.dart';

void main() {
  final testConsultantModel = ConsultantModel(
    name: 'نجلاء',
    lastJob: "سكرتيرية تنفذية في المؤسسة الوطنية للتمويل الأصغر في اليمن",
    imageUrl: null,
    starts: 5,
    sex: EnumSex.female,
  );
  final testConsultantsModel = [
    testConsultantModel,
    ConsultantModel(
      name: 'خالد',
      lastJob: "خبير في التسويق الالكتروني",
      imageUrl: null,
      starts: 4,
      sex: EnumSex.male,
    ),
  ];

  test(
    "should be a subclass from Consultant Entity",
    () async {
      // assert
      expect(testConsultantModel, isA<ConsultantEntity>());
    },
  );

  test(
    "Should return valid model from json",
    () {
      // arrange
      final jsonMap = jsonDecode(
          readJson('helpers/dummy_data/dummy_consultants_response.json'));
      // act
      List<ConsultantModel> result = [];
      for (int i = 0; i < jsonMap.length; i++) {
        result.add(ConsultantModel.fromMap(jsonMap[i]));
      }
      // assert
      expect(result, equals(testConsultantsModel));
    },
  );

  test('should return a json map containing proper data', () {
    // act
    final result = testConsultantsModel.map((value) => value.toMap()).toList();
    // assert
    final expectedJsonMap = [
      {
        "name": "نجلاء",
        "lastJob": "سكرتيرية تنفذية في المؤسسة الوطنية للتمويل الأصغر في اليمن",
        "imageUrl": null,
        "starts": 5,
        "isMale": false
      },
      {
        "name": "خالد",
        "lastJob": "خبير في التسويق الالكتروني",
        "imageUrl": null,
        "starts": 4,
        "isMale": true
      }
    ];
    expect(result, equals(expectedJsonMap));
  });
}
