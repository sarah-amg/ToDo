import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_project/Model/tasklist.dart';

import 'Screens/task_screens.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => TaskList(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
        
    );
  }
}