import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../model/Task.dart';

class TaskController extends GetxController{

  final _taskList = <Task>[].obs;

  List<Task> get taskList => _taskList.value;

  TextEditingController? textEditingController;

  @override
  void onInit() {
    // TODO: implement onInit
    textEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController?.clear();
    super.dispose();
  }


  void addTask () {
    String? txt = textEditingController?.text;
    DateTime dateTime = DateTime.now();
    _taskList.add(Task(txt!, dateTime.day.toString()));
    update();
  }

  Future<void> deleteTask (int index) async{
     _taskList.removeAt(index);
     update();
  }

}