import 'package:angular2/core.dart';
import 'dart:async';

import 'package:dart_app/Components/Tasks/task_details/task_details_component.dart';
import 'package:dart_app/Components/Tasks/task_editor/task_editor_component.dart';
import 'package:dart_app/Components/Error/error_message_componnent.dart';

import 'package:dart_app/Services/task_service.dart';
import 'package:dart_app/Class/Task.dart';

@Component(
    selector: "tasks-list",
    templateUrl: 'tasks_list_component.html',
    styleUrls: const ['tasks_list_component.css'],
    directives: const [TaskDetailsComponent, TaskEditorComponent, ErrorMessageComponent],
    providers: const [TaskService]
)

class TaskListComponent implements OnInit
{



  List<Task> tasks;

  final TaskService _taskService;
  TaskListComponent(this._taskService);

  bool errorMsg;

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

  removeAll()
  {
    _taskService.removeAll();
  }

  onError(bool event)
  {
    errorMsg = event;
  }

}