part of 'home_consultants_bloc.dart';

sealed class HomeConsultantsState extends Equatable {
  const HomeConsultantsState();

  @override
  List<Object> get props => [];
}

final class HomeConsultantsEmpty extends HomeConsultantsState {}

class HomeConsultantsLoading extends HomeConsultantsState {}

//
class HomeConsultantsLoaded extends HomeConsultantsState {
  final List<ConsultantEntity> consultants;

  const HomeConsultantsLoaded(this.consultants);

  @override
  List<Object> get props => [consultants];
}

class HomeConsultantsLoadFailure extends HomeConsultantsState {
  final AppFailure appFailure;

  const HomeConsultantsLoadFailure(this.appFailure);

  @override
  List<Object> get props => [appFailure];
}
