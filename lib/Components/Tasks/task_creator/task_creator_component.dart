import 'package:angular2/core.dart';

import 'package:dart_app/Services/task_service.dart';
import 'package:dart_app/Components/Error/error_message_componnent.dart';

import 'package:dart_app/Components/Tasks/tasks_list/tasks_list_component.dart';


@Component(
    selector: "task-creator",
    templateUrl: 'task_creator_component.html',
    directives: const [TaskListComponent, ErrorMessageComponent],
    providers: const [TaskService],
)

class TaskCreatorComponent
{

  final TaskService _taskService;
  TaskCreatorComponent(this._taskService);

  bool errorMsg;
  String message = "Cette tache existe déjà !";

  addTask(String taskTitle)
  {

    if(taskTitle.length > 0)
    {
      _taskService.addTask(taskTitle);
      errorMsg = _taskService.onError();
    }

  }


}