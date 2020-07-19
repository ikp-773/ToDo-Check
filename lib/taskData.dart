import 'package:flutter/material.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(task: 'bye'),
    Task(task: 'hi'),
    Task(task: 'nonono'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTask) {
    _tasks.add(Task(task: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void removeTask(index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}

class Task {
  bool isDone;
  String task;
  Task({this.task, this.isDone = false});
  void toggleDone() {
    isDone = !isDone;
  }
}
