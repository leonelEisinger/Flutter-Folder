import 'package:flutter/material.dart';
import '/data/produtos_db.dart';
import '/screens/product_screen.dart';

class ProdcutListScreen extends StatelessWidget {
  const ProdcutListScreen({super.key, required this.idCategoria});

  final String idCategoria;

  @override
  Widget build(BuildContext context) {
    final produtos = ProdutosDB()
        .obterTodos()
        .where((prod) => prod.idCategoria == idCategoria)
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text('Produtos')),
      body: ListView.builder(
        itemCount: produtos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(produtos[index].descricao),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductScreen(produto: produtos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
