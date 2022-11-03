import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Model/tasklist.dart';
import '../Model/tasklist.dart';

class TaskListTile extends StatelessWidget {
  bool? ischecked = false;
  String? taskTitle;
  late void Function(bool?) chaackboxchange;
  late void Function() deletTas;

  TaskListTile({
      this.ischecked, 
      this.taskTitle, 
      required this.chaackboxchange,
      required this.deletTas});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deletTas,
      title: Text(
        taskTitle!,
        style: TextStyle(
            decoration: ischecked! ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.grey, 
          onChanged: chaackboxchange, 
          value: ischecked),
    );
  }
}
