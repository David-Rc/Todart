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
    if(taskTitle.length > 0)
    {
      mockTasks.add(new Task(1, taskTitle, 'CURRENT_USER', date));
    }

  }

  removeTask(Task task)
  {
    mockTasks.remove(task);
  }

  updateTask(Task task)
  {

  }
}