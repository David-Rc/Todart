import 'package:angular2/core.dart';

import 'package:dart_app/Services/task_service.dart';

import 'package:dart_app/Components/Tasks/tasks_list/tasks_list_component.dart';


@Component(
    selector: "task-creator",
    templateUrl: 'task_creator_component.html',
    directives: const [TaskListComponent],
    providers: const [TaskService],
)

class TaskCreatorComponent
{

  final TaskService _taskService;
  TaskCreatorComponent(this._taskService);

  @Output() EventEmitter errorMsg = new EventEmitter();

  addTask(String taskTitle)
  {
    if(taskTitle.length > 0)
    {
      _taskService.addTask(taskTitle);
      errorMsg.emit(_taskService.onError());
    }


  }


}