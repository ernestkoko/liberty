import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';
part 'home_event.dart';
class HomeBloc extends Bloc<HomeEvent, HomeState>{
  HomeBloc():super(HomeIniState()){
    on<OnHomeInitEvent>(_init);
    on<OnHomeProjectEvent>(_project);
    on<OnHomeCreateProjectEvent>(_createProject);
  }

  FutureOr<void> _init(OnHomeInitEvent event, Emitter<HomeState> emit) {
    emit(HomeIniState());
  }
  FutureOr<void> _project(OnHomeProjectEvent event, Emitter<HomeState> emit) {
    emit(HomeProjectState());
  }
  FutureOr<void> _createProject(OnHomeCreateProjectEvent event, Emitter<HomeState> emit) {
    emit(HomeCreateProjectState());
  }
}