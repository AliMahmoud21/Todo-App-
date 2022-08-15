// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  // by the isChecked variable we will be able to check the box of task
  final bool isChecked;
  // by the taskTitle variable we'll able to add the tasks that the user want
  final String taskTitle;
  // throw the checkboxChange variable we can remove the check from the box
  final void Function(bool?) checkboxChange;
  // by the listTileDelete variable we'll be able to delete the tasks we finished
  final void Function() listTileDelete;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      required this.listTileDelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            // color of the text [ tasks ] that will appear on the container
            color: Colors.white,
            fontSize: 25,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      // the variable isChecked and checkboxChange will apply here
      trailing: Checkbox(
        // the color of the line throw the task you checked
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: checkboxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
