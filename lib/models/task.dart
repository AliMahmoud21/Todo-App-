// the isDone variable will control if the tasks are finished or not [ if you finish a task you will check or remove but by this you can remove the check]
class Task {
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void doneChange() {
    isDone = !isDone;
  }
}
