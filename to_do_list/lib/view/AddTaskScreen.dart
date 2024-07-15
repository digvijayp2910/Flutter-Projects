import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/TaskController.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});
  TaskController taskController =Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme text = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Column(
            children: [
              const Spacer(
                flex: 3,
              ),
              Text(
                "Add New task",
                style: text.headlineSmall,
              ),
              const Spacer(
                flex: 3,
              ),
              TextField(controller: taskController.textEditingController,
                decoration: InputDecoration(
                    filled: true,
                    hintText: "Enter name of Task",
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  taskController.addTask();
                  taskController.textEditingController?.text = '';
                  },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red),
                  child: Text(
                    "Add Task",
                    style: text.labelLarge?.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
