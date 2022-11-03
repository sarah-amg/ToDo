import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Model/tasklist.dart';

class AddTask extends StatelessWidget {
   var newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(".. Add Task ..",
          textAlign: TextAlign.center,
           style: TextStyle(color: Colors.grey[500], fontSize: 30, fontWeight: FontWeight.bold),),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitle = value;;
            },
          ),
          SizedBox(height: 20,),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 131, 170, 185)  ),
            onPressed: (){
              Provider.of<TaskList>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context); 
          }, child: Text("Add", style: TextStyle(color: Colors.white),))
        ],
      ),
    );
  }
}