import 'package:flutter_application_1/widgets/task_item.dart';
import 'package:provider/provider.dart';

import '../providers/task_provider.dart';
import 'package:flutter/material.dart';
import '../widgets/task_list.dart';
import '../screens/add_product.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final taskProvider = Provider.of<TaskProvider>(context);

    var idle = taskProvider.idleqtd; // Total Comprados <- if comprado/marcado ou nesse caso total de pessoas que terminaram a tarefa -> +
    var tasks = taskProvider.totalTasks(); // para Comprar
    var total = taskProvider.totalQtdPeople(); // qtd total de produtos

    return Scaffold(
      appBar: AppBar(title: Text("Assigned People To Tasks")),
      body: Column(
        children: [
          Text('Idle people: $idle'),
          Text('Total tasks: $tasks'),
          Text('Total people: $total'),

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
