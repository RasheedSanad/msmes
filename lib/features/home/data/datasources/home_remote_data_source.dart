// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:msmes_app/core/constants/app_constant.dart';
import 'package:msmes_app/core/error/app_exception.dart';

import 'package:msmes_app/features/home/data/models/consultant_model.dart';
import 'package:msmes_app/features/home/data/models/service_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<ServiceModel>> getServices();
  Future<List<ConsultantModel>> getConsultants();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final http.Client client;
  HomeRemoteDataSourceImpl({
    required this.client,
  });
  @override
  Future<List<ConsultantModel>> getConsultants() async {
    final response = await client.get(Uri.parse(AppConstant.consultants));
    if (response.statusCode != 200) throw ServerException();

    List<ConsultantModel> result = [];
    final decodedResponse = json.decode(response.body);
    for (int i = 0; i < decodedResponse.length; i++) {
      result.add(ConsultantModel.fromMap(decodedResponse[i]));
    }
    return result;
  }

  @override
  Future<List<ServiceModel>> getServices() async {
    final response = await client.get(Uri.parse(AppConstant.services));
    // when error ocured
    if (response.statusCode != 200) throw ServerException();
    // when statusCode = 200
    List<ServiceModel> services = [];
    final decodeResponse = jsonDecode(response.body);
    for (int i = 0; i < decodeResponse.length; i++) {
      services.add(ServiceModel.fromMap(decodeResponse[i]));
    }
    return services;
  }
}
