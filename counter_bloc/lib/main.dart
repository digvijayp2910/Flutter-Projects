import 'package:counter_bloc/bloc/counter/counter_bloc.dart';
import 'package:counter_bloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:counter_bloc/bloc/switch_example/switch_bloc.dart';
import 'package:counter_bloc/ui/todo/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/todo/todo_bloc.dart';
import 'bloc/utils/image_picker_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => CounterBloc()),
      BlocProvider(create: (_) => SwitchBloc()),
      BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtil())),
      BlocProvider(create: (_) => TodoBloc()),
    ], child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ToDoScreen(),
    ));

  }
}
