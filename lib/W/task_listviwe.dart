import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Model/tasklist.dart';
import 'package:todo_project/W/task_list.dart';

class TaskListV extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskList>(builder: (context, task, child) {
      return ListView.builder(
        itemCount: task.taskItem.length,
        itemBuilder: (context, index) {
          return TaskListTile(
            taskTitle: task.taskItem[index].taskName,
            ischecked: task.taskItem[index].isChaked,
            chaackboxchange: (newvalue) {
              task.updatetask(task.taskItem[index]);
            },
            deletTas: () {
              task.removeTask(task.taskItem[index]);
            },
            
          );
    
        },
       
      );
    },

    );
  }
}