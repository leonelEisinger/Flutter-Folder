class Task {
  final int id;
  final String label;
  final int qtd;
  bool isCompleted;

  Task({required this.id, required this.label, required this.qtd,this.isCompleted = false});

  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}
