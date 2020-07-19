import 'package:flutter/material.dart';

class Tasks extends StatelessWidget {
  Tasks({this.isChecked, this.task, this.callBack, this.longPressCallback});
  final bool isChecked;
  final String task;
  final Function callBack;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        task,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: callBack,
      ),
      onLongPress: longPressCallback,
    );
  }
}
