// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todaydo_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  // this page will contain all the variables that we made in the previous page [ isChecked , taskTitle, checkboxChange ]
  // it will control the count of the tasks that you will add
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxChange: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              listTileDelete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
