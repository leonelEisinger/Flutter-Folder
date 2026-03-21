import 'package:flutter/material.dart';
import '/data/categorias_db.dart';
import '/screens/produtct_list_screen.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categorias = CategoriasDB().obterTodos();

    return Scaffold(
      appBar: AppBar(title: Text('Categorias')),
      body: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categorias[index].nome),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProdcutListScreen(idCategoria: categorias[index].id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
