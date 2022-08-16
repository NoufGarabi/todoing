import 'package:flutter/material.dart';
import '../models/taskdata.dart';
import 'todobox.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: ((context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ToDoBox(
              delete: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
              isChanged: taskData.tasks[index].isDone,
              TaskTitle: taskData.tasks[index].name,
              callback: (checkboxstate) {
                taskData.checkTask(taskData.tasks[index]);
              });
        },
        itemCount: taskData.tasks.length,
      );
    }));
  }
}
