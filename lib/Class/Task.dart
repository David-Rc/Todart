class Task
{
  final int id;
  String text;
  String auteur;
  DateTime date = new DateTime.now();

  Task(this.id, this.text, this.auteur, this.date);
}