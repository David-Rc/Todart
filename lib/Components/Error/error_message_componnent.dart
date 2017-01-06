import 'package:angular2/core.dart';

@Component(
    selector: "error-msg",
    templateUrl: "error_message_component.html",
)

class ErrorMessageComponent
{

  @Input()
  String message = "ERROR";

}