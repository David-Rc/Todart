class Task
{
  final int id;
  String title;
  String auteur;
  DateTime date = new DateTime.now();

  Task(this.id, this.title, this.auteur, this.date);
}