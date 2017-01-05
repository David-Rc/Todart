import "package:angular2/core.dart";

import "package:dart_app/task_service.dart";

import 'Class/Task.dart';


@Component(
    selector:"task-edit",
    templateUrl:"task_editor_component.html",
    providers: const [TaskService]
)

class TaskEditorComponent
{
  @Input()
  Task task;

  @Output() EventEmitter editEvent = new EventEmitter();

  final TaskService _taskService;
  TaskEditorComponent(this._taskService);

  updateTask(Task task, String taskTitle)
  {
    _taskService.updateTask(task, taskTitle);
    editEvent.emit(null);
  }

}