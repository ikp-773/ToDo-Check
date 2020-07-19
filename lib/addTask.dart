import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_check/taskData.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTask;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18.6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightGreenAccent,
                fontSize: 35,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                newTask = value;
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                hintText: 'Enter Task',
                floatingLabelBehavior: FloatingLabelBehavior.auto,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FlatButton(
              color: Colors.lightGreenAccent,
              onPressed: () {
                if (newTask != null) {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTask);
                }
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 25,
                    letterSpacing: 1,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
