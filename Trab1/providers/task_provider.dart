import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [
    Task(id: 1, label: 'Tarefa Um'),
    Task(id: 2, label: 'Tarefa Dois'),
    Task(id: 3, label: 'Tarefa Três'),
    Task(id: 4, label: 'Tarefa Quatro'),
    Task(id: 5, label: 'Tarefa Cinco'),
  ];

  List<Task> get tasks => _tasks;

  void toggleTaskCompletion(int id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.toggleCompleted();
    notifyListeners();
  }
}
