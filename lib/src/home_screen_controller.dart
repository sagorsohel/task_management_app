import 'package:flutter/material.dart';

import '../models/task_model.dart';

class HomeScreenController {
  final TextEditingController taskTitleController = TextEditingController();
  final TextEditingController taskDetailsController = TextEditingController();
  List<TaskModel> tasks = [
    TaskModel(
        taskName: 'demo1', taskDetails: 'demoDetais1', isCompleted: false),
    TaskModel(
        taskName: 'demo2', taskDetails: 'demoDetais2', isCompleted: false),
    TaskModel(
        taskName: 'demo3', taskDetails: 'demoDetaisdss1', isCompleted: false),
    TaskModel(
        taskName: 'demo4', taskDetails: 'demoDetsdsais1', isCompleted: false),
  ];
  void addNewTask() {
    tasks.add(TaskModel(
        taskName: taskTitleController.text,
        taskDetails: taskDetailsController.text,
        isCompleted: false));
    print(tasks.length);
    taskTitleController.clear();
    taskDetailsController.clear();
  }
}
