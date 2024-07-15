import 'package:equatable/equatable.dart';

abstract class TodoEvent extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AddTodoEvent extends TodoEvent{
  String task;
  AddTodoEvent({required this.task});

  @override
  // TODO: implement props
  List<Object?> get props => [task];
}

class RemoveTodoEvent extends TodoEvent{
  String task;
  RemoveTodoEvent({required this.task});

  @override
  // TODO: implement props
  List<Object?> get props => [task];
}
