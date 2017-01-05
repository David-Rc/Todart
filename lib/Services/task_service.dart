import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/Class/Task.dart';
import 'package:dart_app/Mocks/mockTasks.dart';

@Injectable()
class TaskService
{
  bool errorTask;

  DateTime date = new DateTime.now();

  Future<List<Task>> getTasks() async => mockTasks;

  addTask(String taskTitle)
  {
    mockTasks.forEach((task) => taskTitle == task.title ? errorTask = true : errorTask = false);
    mockTasks.add(new Task(1, taskTitle, 'CURRENT_USER'));
  }

  removeTask(Task task)
  {
    mockTasks.remove(task);
  }

  updateTask(Task task, String taskTitle)
  {
      taskTitle.length <= 0 ? errorTask = true : errorTask = false;
      task.title = taskTitle;
      task.modifyDate = new DateTime.now();
  }

  removeAll()
  {
    mockTasks.removeWhere((task) => task.checked);
  }

  onError()
  {
    return errorTask;
  }
}