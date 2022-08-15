// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todaydo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    // these codes will make and control the fields that by it the user can add his tasks
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // the name over the text field
          // the color and the size of the text will be [blue , 30]
          Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(212, 12, 80, 135), 
                fontWeight: FontWeight.bold,
              )),
          // by the TextField property the user will be able to add the tasks that he want
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          // it will make space between the TextField And the TextButton
          SizedBox(height: 30),
          TextButton(
            // we will add the tasks that we want
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              // the Navigator.pop will show the keyboard when you click on the button to add a task
              Navigator.pop(context);
            },
            //it will be the text button throw it the task will appear in the tasks field [ container ]
            // the color, the background and the size of the text will be [white , blue , 25]
            child: Text(
              'Add',
              style: TextStyle(fontSize: 25),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(212, 12, 80, 135),
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
