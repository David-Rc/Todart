class Task
{
  final int id;
  String title;
  String author;
  DateTime createdDate = new DateTime.now();
  DateTime modifyDate;

  Task(this.id, this.title, this.author);
}