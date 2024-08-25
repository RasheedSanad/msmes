// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import '../../../../core/utils/enum_sex.dart';

class ConsultantEntity extends Equatable {
  final String name;
  final String lastJob;
  final String imageUrl;
  final int starts;
  final EnumSex sex;
  const ConsultantEntity({
    required this.name,
    required this.lastJob,
    required this.imageUrl,
    required this.starts,
    required this.sex,
  });

  @override
  List<Object> get props {
    return [
      name,
      lastJob,
      imageUrl,
      starts,
      sex,
    ];
  }
}
