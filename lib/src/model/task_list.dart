import 'package:flutter/material.dart';
import 'package:todo_app/src/model/task.dart';

class TaskList with ChangeNotifier {
  final List<Task> _tasks = [];

  List<Task> get tasks {
    return [..._tasks];
  }

  int get tasksCount {
    return _tasks.length;
  }

  int get completedTasksCount {
    return _tasks.where((task) => task.isChecked).length;
  }

  void checkTask(int id) {
    final taskIndex = _tasks.indexWhere((task) => task.id == id);

    if (taskIndex < 0) return;

    final task = _tasks[taskIndex];
    task.isChecked = !task.isChecked;
    _tasks[taskIndex] = task;

    notifyListeners();
  }

  void deleteTask(int id) {
    final taskIndex = _tasks.indexWhere((task) => task.id == id);

    if (taskIndex < 0) return;

    _tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void createTask(String label) {
    final newTask = Task(id: tasksCount + 1, label: label, isChecked: false);
    _tasks.add(newTask);

    notifyListeners();
  }
}
