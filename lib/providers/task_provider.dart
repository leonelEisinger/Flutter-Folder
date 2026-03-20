import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider with ChangeNotifier {
  final List<Task> _tasks = [
    Task(id: 1, label: 'Tarefa Um', qtd: 1),
    Task(id: 2, label: 'Tarefa Dois', qtd: 3),
    Task(id: 3, label: 'Tarefa Três', qtd: 2),
    Task(id: 4, label: 'Tarefa Quatro', qtd: 5),
    Task(id: 5, label: 'Tarefa Cinco', qtd: 4),
  ];

  List<Task> get tasks => _tasks;

  void toggleTaskCompletion(int id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.toggleCompleted();
    notifyListeners();
  }
}
