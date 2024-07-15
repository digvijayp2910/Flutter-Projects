import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/todo/todo_bloc.dart';
import '../../bloc/todo/todo_event.dart';
import '../../bloc/todo/todo_state.dart';

class ToDoScreen extends StatelessWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker Screen"),
        ),
        body: BlocBuilder<TodoBloc, TodoState>(
          builder: (context, state) {
            if(state.tasks!.isNotEmpty){return ListView.builder(
                itemCount: state.tasks!.length, itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.tasks![index].toString()), trailing: InkWell(onTap:(){
                  context.read<TodoBloc>().add(RemoveTodoEvent(task: state.tasks![index]));
              },child: Icon(Icons.delete)),);
            });}
            else{
              return Center(child: Container(child: Text("No data found"),),);
            }
          },
        ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        for(int i=0;i<2;i++){context.read<TodoBloc>().add(AddTodoEvent(task: "task-- $i"));}
      },child: Icon(Icons.add),),
    );
  }
}
