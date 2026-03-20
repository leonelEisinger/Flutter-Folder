import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import '../models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem(this.task);

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return ListTile(
      leading: Checkbox(
        value: task.isCompleted,
        onChanged: (value) {
          taskProvider.toggleTaskCompletion(task.id);
        },
      ),
      title: Text(
        task.label,
        style: TextStyle(
          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
      subtitle: Text(
        'Qtd pessoas atribudas: ${task.qtd.toString()}',
        style: TextStyle(
          decoration: task.isCompleted ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
