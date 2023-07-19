import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_event.dart';
part 'landing_state.dart';
class LandingBloc extends Bloc<LandingEvent,LandingInitState>{
  LandingBloc():super(LandingInitState()){
    on<OnLandingEvent>(_onInit);
  }

  FutureOr<void> _onInit(OnLandingEvent event, Emitter<LandingState> emit) {
  }
}