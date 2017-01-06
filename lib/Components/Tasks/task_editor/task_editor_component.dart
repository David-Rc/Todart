import "package:angular2/core.dart";

import "package:dart_app/Services/task_service.dart";
import "package:dart_app/Components/Error/error_message_componnent.dart";

import 'package:dart_app/Class/Task.dart';


@Component(
    selector:"task-edit",
    templateUrl:"task_editor_component.html",
    directives: const [ErrorMessageComponent],
    providers: const [TaskService]
)

class TaskEditorComponent
{

  @Input()
  Task task;

  @Output() EventEmitter editEvent = new EventEmitter();
  @Output() EventEmitter errorMsg = new EventEmitter();

  String message = "Ce champs est vide";

  final TaskService _taskService;
  TaskEditorComponent(this._taskService);

  updateTask(Task task, String taskTitle)
  {
    _taskService.updateTask(task, taskTitle);
    errorMsg.emit(_taskService.onError());
    editEvent.emit(null);
  }

}