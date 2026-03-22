import 'package:flutter/material.dart';

class addNew extends StatefulWidget {
  @override
  State<addNew> createState() => _addNewState();
}

class _addNewState extends State<addNew> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Add new Task to list")),
        body: Column(
          children: [
            Title(
              color: Colors.black, 
              child: Text('Type the name and qtd of people'),
              )
          ],
        ),
      );
    }
}