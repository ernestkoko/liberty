part of 'add_task_bloc.dart';

abstract class AddTaskEvent extends Equatable{

}
class OnAddTaskInitEvent extends AddTaskEvent{
  @override
  List<Object?> get props => [];

}