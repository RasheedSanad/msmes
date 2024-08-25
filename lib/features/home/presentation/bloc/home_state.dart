part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeEmpty extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoadedServices extends HomeState {
  final List<ServiceEntity> services;

  const HomeLoadedServices(this.services);

  @override
  List<Object> get props => [services];
}

class HomeLoadFailure extends HomeState {
  final AppFailure appFailure;

  const HomeLoadFailure(this.appFailure);

  @override
  List<Object> get props => [appFailure];
}
