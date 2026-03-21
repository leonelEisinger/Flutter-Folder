import 'package:flutter/material.dart';

import '/models/produto.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.produto});

  final Produto produto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produto')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ID: ${produto.id}'),
            Text('Descrição: ${produto.descricao}'),
            Text('Preço: ${produto.preco}'),
            Text('ID da Categoria: ${produto.idCategoria}'),
          ],
        ),
      ),
    );
  }
}
