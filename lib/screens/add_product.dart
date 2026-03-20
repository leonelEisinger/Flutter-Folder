import 'package:flutter/material.dart';
import '../widgets/task_list.dart';

class addNew extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Add new product to list")),
        body: Column(
          children: [
            Text('Worked fine'),
          ],
        ),
      );
    }
}