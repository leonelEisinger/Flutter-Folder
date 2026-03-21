import 'package:flutter/material.dart';

import 'category_list_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CategoryListScreen());
  }
}
