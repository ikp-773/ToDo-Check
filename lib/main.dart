import 'package:flutter/material.dart';
import 'package:todo_check/taskData.dart';
import 'homePage.dart';
import 'package:provider/provider.dart';
import 'taskData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
    );
  }
}
