import 'package:msmes_app/core/extensions/extensions.dart';
import 'package:msmes_app/features/home/domain/entities/consultant_entity.dart';

import '../../../../core/utils/enum_sex.dart';

class ConsultantModel extends ConsultantEntity {
  ConsultantModel({
    required String? name,
    required String? lastJob,
    required String? imageUrl,
    required int? starts,
    required EnumSex? sex,
  }) : super(
          name: name.orEmpty(),
          lastJob: lastJob.orEmpty(),
          imageUrl: imageUrl.orEmpty(),
          starts: starts.orZero(),
          sex: sex.orUnknown(),
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name.toMap(),
      'lastJob': lastJob.toMap(),
      'imageUrl': imageUrl.toMap(),
      'starts': starts,
      'isMale': sex.toMap(),
    };
  }

  factory ConsultantModel.fromMap(Map<String, dynamic> map) {
    return ConsultantModel(
      name: map.fromString('name'),
      lastJob: map.fromString('lastJob'),
      imageUrl: map.fromString('imageUrl'),
      starts: map.fromInt('starts'),
      sex: EnumSex.fromMap(map.fromBool('isMale')),
    );
  }
}
