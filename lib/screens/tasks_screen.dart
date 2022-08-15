// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todaydo_app/models/task_data.dart';
import 'package:todaydo_app/screens/add_task_screen.dart';
import 'package:todaydo_app/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //flatingActionButtonLocation Are Going To  Make The Float Button In The Center Of The App
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      //by floatingActionButton We're Going To create the button that by it we will add the tasks
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newTaskTitle) {}),
              ),
            ),
          );
        },
        // color of the button will be teal[400]
        backgroundColor: Colors.teal[400],
        // icon of the button will be the next[+]
        child: Icon(Icons.add),
      ),
      //background color of the app will be the next
      backgroundColor: Color.fromARGB(176, 5, 121, 183),
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // throw the row widget we'll add the App name and the icon
            Row(
              children: [
                //we'll add the icon of the by the icon property
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white,
                ),
                //it will make a space between the text and the icon
                SizedBox(width: 20),
                // name of the app that will appear in the top of it
                Text(
                  'ToDo',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            // by this the will count the number of the tasks that you added [ number + Tasks]
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            // it will make space between the nuber of the tasks and the container of tasks
            SizedBox(height: 20),
            //we'll make a container inside the expanded widget and the container will contain all the tasks will be added by the user
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(176, 5, 121, 183),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
