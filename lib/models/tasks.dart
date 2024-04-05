class Tasks {
  late final String taskName;
  bool isDone;

  Tasks({this.isDone = false, required this.taskName});

  void toggleDone() {
    isDone = !isDone;
  }
}
