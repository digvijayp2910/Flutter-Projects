import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/controller/TaskController.dart';
import 'package:to_do_list/view/AddTaskScreen.dart';

import 'TaskList.dart';

class TodoScreen extends StatelessWidget {
  TodoScreen({super.key});

  TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    TextTheme txt = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: InkWell(
        onTap: () {
          Get.to(() => AddTaskScreen());
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.red),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => (taskController.taskList.isEmpty)
              ? Center(
                  child: Text(
                    "No task assign",
                    style: txt.headlineSmall,
                  ),
                )
              : ListView.builder(
                  itemCount: taskController.taskList.length,
                  itemBuilder: (context, index) => TaskTile(
                        size: size,
                        txt: txt,
                        time: taskController.taskList[index].taskCreated,
                        des: taskController.taskList[index].task,
                        press: () {
                          taskController.deleteTask(index);
                        },
                      )),
        ),
      ),
    );
  }
}
