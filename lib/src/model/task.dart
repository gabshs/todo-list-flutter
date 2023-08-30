class Task {
  final int id;
  final String label;
  bool isChecked;

  Task({required this.id, required this.label, required this.isChecked});
}

final List<Task> tasksData = [
  Task(
      id: 1,
      label:
          'Integer urna interdum massa libero auctor neque turpis turpis semper.',
      isChecked: false),
  Task(
      id: 2,
      label:
          'Integer urna interdum massa libero auctor neque turpis turpis semper.',
      isChecked: false),
  Task(
      id: 3,
      label:
          'Integer urna interdum massa libero auctor neque turpis turpis semper.',
      isChecked: false),
];
