import 'package:flutter/material.dart';
import 'package:task_management_app/screens/home_screen.dart';

void main() {
  runApp(const TaskManageMentApp());
}

class TaskManageMentApp extends StatelessWidget {
  const TaskManageMentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task ManageMent',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
