part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

// * HomeServices
class HomeServicesEmpty extends HomeState {}

class HomeServicesLoading extends HomeState {}

//
class HomeServicesLoaded extends HomeState {
  final List<ServiceEntity> services;

  const HomeServicesLoaded(this.services);

  @override
  List<Object> get props => [services];
}

class HomeServicesLoadFailure extends HomeState {
  final AppFailure appFailure;

  const HomeServicesLoadFailure(this.appFailure);

  @override
  List<Object> get props => [appFailure];
}

