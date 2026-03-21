import '/models/categoria.dart';

class CategoriasDB {
  List<Categoria> _conteudo = [];

  CategoriasDB() {
    _inicializar();
  }

  void _inicializar() {
    _conteudo.add(Categoria(id: 'CatA', nome: 'Categoria A'));
    _conteudo.add(Categoria(id: 'CatB', nome: 'Categoria B'));
    _conteudo.add(Categoria(id: 'CatC', nome: 'Categoria C'));
    _conteudo.add(Categoria(id: 'CatD', nome: 'Categoria D'));
  }

  List<Categoria> obterTodos() {
    return _conteudo;
  }
}
