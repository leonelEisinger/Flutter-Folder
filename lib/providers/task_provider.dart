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

  int get total => _tasks.length;
  int get totalQtd => _tasks.fold(0, (sum, task) => sum + task.qtd);
  int idleqtd = 0;

  void toggleTaskCompletion(int id) {
    final task = _tasks.firstWhere((task) => task.id == id);
    task.toggleCompleted();

    idleqtd = _tasks
      .where((task) => task.isCompleted)
      .fold(0, (sum, task) => sum + task.qtd);

    notifyListeners();
  }

  int totalTasks() {
    return total;
  }

  int totalQtdPeople() {
    return totalQtd;
  }

  int totalIdle(){
    return idleqtd;
  }
}
