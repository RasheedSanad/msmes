part of 'home_consultants_bloc.dart';

sealed class HomeConsultantsEvent extends Equatable {
  const HomeConsultantsEvent();

  @override
  List<Object> get props => [];
}

class OnGetConsultants extends HomeConsultantsEvent {}
