import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'create_project_event.dart';
part 'create_project_state.dart';
class CreateProjectBloc extends Bloc<CreateProjectEvent, CreateProjectState>{
  CreateProjectBloc(): super(CreateProjectInitState()){
    on<OnCreateProjectInitEvent>((event, emit) => null);
  }
}