import 'package:msmes_app/core/extensions/extensions.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';

class ServiceModel extends ServiceEntity {
  ServiceModel({
    required String? title,
    required String? content,
  }) : super(
          title: title.orEmpty(),
          content: content.orEmpty(),
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title.toMap(),
      'content': content.toMap(),
    };
  }

  factory ServiceModel.fromMap(Map<String, dynamic> map) {
    return ServiceModel(
      title: map.fromString('title'),
      content: map.fromString('content'),
    );
  }
}
