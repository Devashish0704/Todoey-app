import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:collection';

class TaskProvider extends ChangeNotifier {
  final CollectionReference _tasksCollection =
      FirebaseFirestore.instance.collection('tasks');

  final List<Tasks> _tasks = [];

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  Future<void> addTask(String newTask, bool isDone) async {
    try {
      await _tasksCollection.add({
        'taskName': newTask,
        'isDone': isDone,
      });
    } catch (e) {
      // print("$e  addtask error");
    }
    final task = Tasks(taskName: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  Future<void> updateTaskInFirestore(String taskId, bool isDone) async {
    try {
      await _tasksCollection.doc(taskId).update({
        'isDone': isDone,
      });
    } catch (e) {
      // print('Error updating task: $e');
    }
  }

  Future<void> deleteTaskFromFirestore(String taskId) async {
    try {
      await _tasksCollection.doc(taskId).delete();
    } catch (e) {
      // print('Error deleting task: $e');
    }
  }
}
