import 'package:flutter/foundation.dart';
import 'package:todoing/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void checkTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
