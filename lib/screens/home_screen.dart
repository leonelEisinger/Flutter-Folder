import 'package:flutter/material.dart';
import '../widgets/task_list.dart';
import '../screens/add_product.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Assign People To Tasks")),
      body: Column(
        children: [
          TaskList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => addNew()
            )
          )
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}
