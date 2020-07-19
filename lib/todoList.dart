import 'package:flutter/material.dart';
import 'tasks.dart';
import 'taskData.dart';
import 'package:provider/provider.dart';

class ToDoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskProvider, child) {
        return ListView.builder(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 30),
          itemBuilder: (context, index) {
            final taskP = taskProvider.tasks[index];
            return Tasks(
              task: taskP.task,
              isChecked: taskP.isDone,
              callBack: (isDone) {
                taskProvider.updateTask(taskP);
              },
              longPressCallback: () {
                taskProvider.removeTask(index);
              },
            );
          },
          itemCount: taskProvider.taskCount,
        );
      },
    );
  }
}
