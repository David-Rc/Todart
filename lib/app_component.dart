// Copyright (c) 2017, david. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:dart_app/task_creator_component.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: const [TaskCreatorComponent],
)


class AppComponent{

  String appTitle = "Todart";

}


