// Copyright (c) 2017, david. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

import 'package:dart_app/Components/Tasks/task_creator/task_creator_component.dart';
import 'package:dart_app/Components/Error/error_message_componnent.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [TaskCreatorComponent, ErrorMessageComponent],
)


class AppComponent{

  String appTitle = "Todart v0.0.6";
  bool errorMsg;

  onError(bool event)
  {
    errorMsg = event;
  }



}