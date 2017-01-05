import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/task_details_component.dart';
import 'package:dart_app/task_editor_component.dart';

import 'package:dart_app/task_service.dart';
import 'package:dart_app/Class/Task.dart';

@Component(
    selector: "tasks-list",
    templateUrl: 'tasks_component.html',
    directives: const [TaskDetailsComponent, TaskEditorComponent],
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

  Task selectedTask;
  Task editTask;

  onSelect(Task task)
  {
    selectedTask = task;
  }

  edit(Task task)
  {
    editTask = task;
  }

}