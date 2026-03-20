import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';

class ProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    final totalTasks = taskProvider.tasks.length;
    final completedTasks =
        taskProvider.tasks.where((task) => task.isCompleted).length;

    return LinearProgressIndicator(
      value: totalTasks == 0 ? 0 : completedTasks / totalTasks,
      backgroundColor: Colors.grey[300],
      color: Colors.green,
      minHeight: 8,
    );
  }
}
