import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'project_event.dart';
part 'project_state.dart';
class ProjectBloc extends Bloc<ProjectEvent,ProjectState>{
  ProjectBloc(): super(ProjectInitState()){
    on<OnProjectInitEvent>(_init);
  }

  FutureOr<void> _init(OnProjectInitEvent event, Emitter<ProjectState> emit) {
  }
}