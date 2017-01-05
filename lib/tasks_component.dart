import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/task_details_component.dart';

import 'package:dart_app/task_service.dart';
import 'package:dart_app/Class/Task.dart';

@Component(
    selector: "tasks-list",
    templateUrl: 'tasks_component.html',
    directives: const [TaskDetailsComponent],
    providers: const [TaskService]
)

class TaskComponent implements OnInit
{
  List<Task> tasks;

  final TaskService _taskService;
  TaskComponent(this._taskService);

  void ngOnInit()
  {
    getTasks();
  }

  Future<Null> getTasks() async
  {
    tasks = await _taskService.getTasks();
  }


  removeTask(Task task)
  {
    _taskService.removeTask(task);
  }

  updateTask(Task task)
  {
    _taskService.updateTask(task);
  }


  Task selectedTask;

  onSelect(Task task)
  {
    selectedTask = task;
  }
}