import 'package:flutter/material.dart';

import '../models/task_model.dart';

class HomeScreenController {
  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDetailsController = TextEditingController();
  List<TaskModel> tasks = [];
  void addNewTask() {
    tasks.add(TaskModel(
        taskName: taskTitleController.text,
        taskDetails: taskDetailsController.text,
        isCompleted: false));
    print(tasks.length);
    taskTitleController.clear();
    taskDetailsController.clear();
  }

  void updateComplete(int index) {
    tasks[index].isCompleted = true;
  }
}
