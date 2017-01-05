import 'package:angular2/core.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:dart_app/task_service.dart';
import 'package:dart_app/tasks_component.dart';

@Component(
    selector: "task-creator",
    templateUrl: "task_creator_component.html",
    directives: const [TaskComponent],
    providers: const [TaskService],
)

class TaskCreatorComponent
{

  final TaskService _taskService;
  TaskCreatorComponent(this._taskService);


  addTask(String taskTitle)
  {
    _taskService.addTask(taskTitle);
  }

}