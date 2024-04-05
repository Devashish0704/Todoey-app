import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Providers/task_provider.dart';

class BottomAddTaskModal extends StatelessWidget {
  const BottomAddTaskModal({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Add Task',
                        style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.normal),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TextField(
                          cursorColor: Colors.lightBlueAccent,
                          textAlign: TextAlign.center,
                          autofocus: true,
                          onChanged: (newText) => newTaskTitle = newText,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.blueAccent,
                        child: TextButton(
                          onPressed: () {
                            if (newTaskTitle.isNotEmpty) {
                              Provider.of<TaskProvider>(context, listen: false)
                                  .addTask(newTaskTitle, false);

                              Navigator.pop(context);
                            }
                          },
                          child: const Text("Add"),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
      backgroundColor: Colors.lightBlueAccent,
      child: const Icon(Icons.add),
    );
  }
}
