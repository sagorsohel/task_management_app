import 'package:flutter/material.dart';
import 'package:task_management_app/screens/home_screen.dart';

void main() {
  runApp(const TaskManageMentApp());
}

class TaskManageMentApp extends StatelessWidget {
  const TaskManageMentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
