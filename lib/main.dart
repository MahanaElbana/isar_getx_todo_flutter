
import 'package:flutter/material.dart';
import 'package:isar_getx_todo_flutter/app/isar_provider_todo_flutter_app.dart';
import 'package:isar_getx_todo_flutter/controller/counter_control.dart';

import 'package:provider/provider.dart';


void main() {
  runApp(
 
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: IsarproviderTodoFlutterApp(),
    ),
  );
}






