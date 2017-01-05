import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/Class/Task.dart';
import 'package:dart_app/mockTasks.dart';

@Injectable()
class TaskService
{

  DateTime date = new DateTime.now();

  // ignore: conflicting_dart_import
  Future<List<Task>> getTasks() async => mockTasks;

  addTask(String taskTitle)
  {
    mockTasks.add(new Task(1, taskTitle, 'CURRENT_USER'));
  }

  removeTask(Task task)
  {
    mockTasks.remove(task);
  }

  updateTask(Task task, String taskTitle)
  {
      task.title = taskTitle;
      task.modifyDate = new DateTime.now();
  }
}