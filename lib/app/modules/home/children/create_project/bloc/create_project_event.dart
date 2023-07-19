part of 'create_project_bloc.dart';

abstract class CreateProjectEvent extends Equatable{

}
class OnCreateProjectInitEvent extends CreateProjectEvent{
  @override
  List<Object?> get props =>[];
}