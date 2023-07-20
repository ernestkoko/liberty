import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liberty/app/modules/task/add_task.dart';

part 'add_task_event.dart';
part 'add_task_state.dart';
class AddTaskBloc extends Bloc<AddTaskEvent, AddTaskState>{
  AddTaskBloc():super(AddTaskInitState()){
    on<OnAddTaskInitEvent>(_init);

  }
  Future<void> _init(OnAddTaskInitEvent event, Emitter<AddTaskState> emit)async{

  }
}