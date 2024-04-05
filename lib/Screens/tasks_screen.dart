import 'package:flutter/material.dart';
import 'package:todoey/Screens/bottom_addtask_screen.dart';
import 'package:todoey/widgets/list_checkbox.dart';
import 'package:todoey/widgets/todoey_heading_column.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: BottomAddTaskModal(),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TodoeyHeadingColumn(),
          CheckList(),
        ],
      ),
    );
  }
}
