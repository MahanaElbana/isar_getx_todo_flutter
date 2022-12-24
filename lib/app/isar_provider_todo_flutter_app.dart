import 'package:flutter/material.dart';
import 'package:isar_getx_todo_flutter/view/home/home_screen.dart';

class IsarproviderTodoFlutterApp extends StatelessWidget {
  const IsarproviderTodoFlutterApp._inernal();

  static const  IsarproviderTodoFlutterApp _instance =
        IsarproviderTodoFlutterApp._inernal();
  
 factory IsarproviderTodoFlutterApp() {
    return _instance ; 
  } 
       
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}
