import "package:angular2/core.dart";

import "package:dart_app/Class/Task.dart";

@Component(
    selector:"task-details",
    templateUrl: "task_details_component.html",

)

class TaskDetailsComponent
{

  @Input()
  Task task;

}