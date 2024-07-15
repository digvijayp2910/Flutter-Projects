import 'package:demohomescreen/widgets/drawer.dart';
import 'package:demohomescreen/widgets/drawer2.dart';
import 'package:demohomescreen/widgets/fi_chart.dart';
import 'package:demohomescreen/widgets/first_row_element.dart';
import 'package:demohomescreen/widgets/home_page.dart';
import 'package:demohomescreen/widgets/listwidget.dart';
import 'package:demohomescreen/widgets/metric_card.dart';
import 'package:demohomescreen/widgets/piechart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/drawer_navigation/drawer_nav_bloc.dart';
import 'bloc/drawer_navigation/drawer_nav_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => DrawerNavBloc(),
        child: DashboardScreen(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  String title;

  DashboardScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text(
          'Welcome Amol Savgave,',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
        ],
      ),
      body: BlocBuilder<DrawerNavBloc, DrawerNavState>(
        builder: (context, state) {
          return state.curr;
        },
      ),
    );
  }

}
