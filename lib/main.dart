// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        // by it we will remove the banner in the top of the app
        debugShowCheckedModeBanner: false,
        // by this code we will call the TasksScreen in the the new page we made [ tasks_screen.dart]
        home: TasksScreen(),
      ),
    );
  }
}
