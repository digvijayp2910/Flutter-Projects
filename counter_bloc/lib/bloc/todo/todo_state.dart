import 'package:equatable/equatable.dart';

class TodoState extends Equatable {
  List<String>? tasks;
  TodoState({this.tasks = const []});

  TodoState copyWith({List<String>? tasks}){
    return TodoState(tasks: tasks ?? this.tasks);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [tasks];

}

