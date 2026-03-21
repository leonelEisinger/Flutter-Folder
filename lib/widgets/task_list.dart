import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/task_provider.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);
    return Expanded(
      child: ListView.builder(
        itemCount: taskProvider.tasks.length,
        itemBuilder: (context, index) => TaskItem(taskProvider.tasks[index]),
      ),
    );
  }
}

