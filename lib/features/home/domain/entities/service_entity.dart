// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ServiceEntity extends Equatable {
  final String title;
  final String content;
  const ServiceEntity({
    required this.title,
    required this.content,
  });

  @override
  List<Object> get props => [title, content];
}
