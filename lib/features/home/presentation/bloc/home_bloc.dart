import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:msmes_app/core/error/app_failure.dart';
import 'package:msmes_app/features/home/domain/entities/service_entity.dart';
import 'package:msmes_app/features/home/domain/usecases/get_services_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetServicesUsecase _servicesUsecase;
  HomeBloc(this._servicesUsecase) : super(HomeEmpty()) {
    on<OnGetServices>((event, emit) async {
      emit(HomeLoading());
      final failureOrServices = await _servicesUsecase.execute();
      failureOrServices.fold((failure) {
        emit(HomeLoadFailure(failure));
      }, (services) {
        emit(HomeLoadedServices(services));
      });
    });
    //
  }
}
