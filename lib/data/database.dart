// ignore_for_file: unused_field

import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

//reference our box
  final _myBox = Hive.box('mybox');

//run this method if this is the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Task 1", true],
      ["Task 1", true],
    ];
  }

  //load the data from databse
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

// update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
