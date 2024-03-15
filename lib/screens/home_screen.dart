import 'package:flutter/material.dart';
import 'package:task_management_app/src/home_screen_controller.dart';
import 'package:task_management_app/styles/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Task Manager",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (data, index) {
            return InkWell(
              onLongPress: () {
                setState(() {
                  controller.updateComplete(index);
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ExpansionTile(
                  leading: const Icon(Icons.list_outlined),
                  title: Row(
                    children: [
                      Text(
                        controller.tasks[index].taskName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      controller.tasks[index].isCompleted
                          ? const Icon(
                              Icons.check,
                              color: Colors.green,
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                  children: [
                    Container(
                      padding: const EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Text(controller.tasks[index].taskDetails,
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                              textAlign: TextAlign.start),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: const Text("Add Task"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: controller.taskTitleController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Task Name",
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        controller: controller.taskDetailsController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Task Details",
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          controller.addNewTask();
                        });
                        Navigator.of(ctx).pop();
                      },
                      child: const Text("Add"),
                    ),
                  ],
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
