
import 'package:flutter/material.dart';

class VarTsak {
  String? taskName;
  bool? isChaked;

  VarTsak({required this.taskName, this.isChaked = false});

  void isDone(){
    isChaked = !isChaked!;
  }
}