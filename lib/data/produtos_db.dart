import '/models/produto.dart';

class ProdutosDB {
  List<Produto> _produtos = [];

  ProdutosDB() {
    _inicializar();
  }

  List<Produto> obterTodos() {
    return _produtos;
  }

  void _inicializar() {
    _inicializarProdutosCategoriaA();
    _inicializarProdutosCategoriaB();
  }

  void _inicializarProdutosCategoriaA() {
    const idCategoriaA = "CatA";
    _produtos.add(
      Produto(
        id: 'PrdA1',
        idCategoria: idCategoriaA,
        descricao: 'Produto 1 Categoria A',
        preco: 9.8,
      ),
    );
    _produtos.add(
      Produto(
        id: 'PrdA2',
        idCategoria: idCategoriaA,
        descricao: 'Produto 2 Categoria A',
        preco: 50.8,
      ),
    );
    _produtos.add(
      Produto(
        id: 'PrdA3',
        idCategoria: idCategoriaA,
        descricao: 'Produto 3 Categoria A',
        preco: 77.45,
      ),
    );
    _produtos.add(
      Produto(
        id: 'PrdA4',
        idCategoria: idCategoriaA,
        descricao: 'Produto 4 Categoria A',
        preco: 91.11,
      ),
    );
  }

  void _inicializarProdutosCategoriaB() {
    const idCategoriaB = "CatB";
    _produtos.add(
      Produto(
        id: 'PrdB1',
        idCategoria: idCategoriaB,
        descricao: 'Produto 1 Categoria B',
        preco: 390.8,
      ),
    );
    _produtos.add(
      Produto(
        id: 'PrdB2',
        idCategoria: idCategoriaB,
        descricao: 'Produto 2 Categoria B',
        preco: 590.8,
      ),
    );
    _produtos.add(
      Produto(
        id: 'PrdB3',
        idCategoria: idCategoriaB,
        descricao: 'Produto 3 Categoria B',
        preco: 190.8,
      ),
    );
  }
}
