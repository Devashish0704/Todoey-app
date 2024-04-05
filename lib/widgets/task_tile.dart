import 'package:flutter/material.dart';

class TaskTileCheckbox extends StatelessWidget {
  const TaskTileCheckbox(
      {super.key,
      required this.isChecked,
      required this.tiletask,
      required this.checkBoxCallback,
      required this.longPressCallBack});
  final bool isChecked;
  final String tiletask;
  final Function(bool?) checkBoxCallback;
  final Function() longPressCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        tiletask,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
