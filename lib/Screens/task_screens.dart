import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Model/tasklist.dart';
import 'package:todo_project/Screens/add_task_screen.dart';
import '../W/task_list.dart';
import '../W/task_listviwe.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
            
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
                    ),
            context: context, 
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTask() ,),
            ));
        },
        backgroundColor: Colors.grey[500],
        child: Icon(Icons.add),

      ),

      backgroundColor: Color.fromARGB(255, 131, 170, 185),
      body: Container(
        padding: EdgeInsets.only(top: 60, bottom: 60, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: const [
            Icon(Icons.playlist_add_check, size: 40, color: Colors.white,),
            SizedBox(width: 20,),
            Text("ToDayDo", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)
            ],
          ),

            Text("${Provider.of<TaskList>(context).taskItem.length} Task", style: TextStyle(color: Colors.white, fontSize: 18),),
            SizedBox(height: 20,),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
                ),
                child: TaskListV(),
              ),
            )

          ],
        ),
      ) ,
    );
  }
}



