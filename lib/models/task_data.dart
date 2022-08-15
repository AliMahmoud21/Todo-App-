// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

// by it you will be able to add your new tasks
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

// it will update the tasks container such check the box of it or not
  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

// by this you will be able to delete the task you finished
  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
