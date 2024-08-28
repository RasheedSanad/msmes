import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/app_failure.dart';
import '../../domain/entities/consultant_entity.dart';
import '../../domain/usecases/get_consultants_usecase.dart';

part 'home_consultants_event.dart';
part 'home_consultants_state.dart';

class HomeConsultantsBloc
    extends Bloc<HomeConsultantsEvent, HomeConsultantsState> {
  final GetConsultantsUsecase _consultantsUsecase;

  HomeConsultantsBloc(this._consultantsUsecase)
      : super(HomeConsultantsEmpty()) {
    //
    on<OnGetConsultants>((event, emit) async {
      emit(HomeConsultantsLoading());
      final failureOrServices = await _consultantsUsecase.execute();
      failureOrServices.fold((failure) {
        emit(HomeConsultantsLoadFailure(failure));
      }, (consultants) {
        emit(HomeConsultantsLoaded(consultants));
      });
    });
  }
}
