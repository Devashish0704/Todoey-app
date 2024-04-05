import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('tasks').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }

          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          final tasks = snapshot.data!.docs;

          return ListView.builder(
            padding: const EdgeInsets.only(left: 30, top: 20),
            itemCount: tasks.length,
            itemBuilder: (context, int index) {
              final task = tasks[index].data() as Map<String, dynamic>;
              return TaskTileCheckbox(
                isChecked: task['isDone'],
                tiletask: task['taskName'],
                checkBoxCallback: (bool? newValue) {
                  FirebaseFirestore.instance
                      .collection('tasks')
                      .doc(tasks[index].id)
                      .update({'isDone': newValue});
                },
                longPressCallBack: () {
                  FirebaseFirestore.instance
                      .collection('tasks')
                      .doc(tasks[index].id)
                      .delete();
                },
              );
            },
          );
        });
  }
}
