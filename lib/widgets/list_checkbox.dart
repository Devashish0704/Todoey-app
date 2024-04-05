import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_checkbox.dart';

class CheckList extends StatelessWidget {
  const CheckList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: const TasksList(),
      ),
    );
  }
}
