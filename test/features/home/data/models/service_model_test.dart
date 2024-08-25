import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:msmes_app/features/home/data/models/service_model.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';

import '../../../../helpers/read_json.dart';

void main() {
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

  test(
    'should be a subclass from service entity',
    () {
      // assert
      expect(testServiceModel, isA<ServiceEntity>());
    },
  );

  test('should return valid model from json', () {
    // arrange
    final jsonMap =
        jsonDecode(readJson("helpers/dummy_data/dummy_services_response.json"));
    // act
    List<ServiceModel> result = [];
    for (int i = 0; i < jsonMap.length; i++) {
      result.add(ServiceModel.fromMap(jsonMap[i]));
    }
    // assert
    expect(result, equals(testServicesModel));
  });

  test(
    'should return a json map containing proper data',
    () {
      // act
      final result =
          testServicesModel.map((service) => service.toMap()).toList();
      // assert
      final expectedMap = [
        {
          "title": "الاستشارات",
          "content": "لديك سوال وتبحث عن اجابة، ستجد الاجابة في اي مجال تريد"
        },
        {
          "title": "الارشاد",
          "content": "المشورة والتوجية في كل اقسام مشروعك واصنع قصة نجاح معنا"
        }
      ];

      expect(result, expectedMap);
    },
  );
}
