import 'package:bloc/bloc.dart';
import 'package:counter_bloc/bloc/todo/todo_event.dart';
import 'package:counter_bloc/bloc/todo/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {

  final List<String> todoList = [];
  TodoBloc() : super(TodoState()) {
    on<AddTodoEvent>(_addEvents);
    on<RemoveTodoEvent>(_removeEvents);
  }

  void _addEvents(AddTodoEvent event, Emitter<TodoState> states){
    todoList.add(event.task);
    emit(state.copyWith(tasks: List.from(todoList)));
  }
  void _removeEvents(RemoveTodoEvent event, Emitter<TodoState> states){
    todoList.remove(event.task);
    emit(state.copyWith(tasks: List.from(todoList)));
  }
}
