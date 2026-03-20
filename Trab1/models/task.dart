class Task {
  final int id;
  final String label;
  bool isCompleted;

  Task({required this.id, required this.label, this.isCompleted = false});

  void toggleCompleted() {
    isCompleted = !isCompleted;
  }
}
