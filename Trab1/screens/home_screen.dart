import 'package:flutter/material.dart';
import '../widgets/progress_bar.dart';
import '../widgets/task_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ProgressBar(),
          ),
          TaskList(),
        ],
      ),
    );
  }
}
