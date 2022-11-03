import 'package:flutter/material.dart';
import 'package:todo_project/Model/var_task.dart';

class TaskList extends ChangeNotifier{

  List<VarTsak> taskItem = [
    VarTsak(taskName: "Go shooping" ), 
    VarTsak(taskName: "Study" ), 

    
  ];

  void addTask(String newTaskTitle){
    taskItem.add(VarTsak(taskName: newTaskTitle));
    notifyListeners();
  }

  void updatetask( VarTsak isChaked){
    isChaked.isDone();
    notifyListeners();
  }

  void removeTask(VarTsak del){
    taskItem.remove(del);
    notifyListeners();
  }
}