import 'package:flutter/material.dart';
import 'package:todo_check/taskData.dart';
import 'homePage.dart';
import 'package:provider/provider.dart';
import 'taskData.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(MyApp());
}

//FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//    FlutterLocalNotificationsPlugin();
//
//Future<void> main() async {
//  WidgetsFlutterBinding.ensureInitialized();
//  var initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
//  var initializationSettingsIOS = IOSInitializationSettings();
//  var initializationSettings = InitializationSettings(
//      initializationSettingsAndroid, initializationSettingsIOS);
//  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
//
//  runApp(MyApp());
//}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData.light().copyWith(
          accentColor: Colors.lightGreenAccent,
        ),
      ),
    );
  }
}
