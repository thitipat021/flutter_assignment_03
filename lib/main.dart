import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/ui/taskscreen.dart';
import 'package:flutter_assignment_03/ui/addnewsub.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo list',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => TaskScreen(),
        "/add": (context) => Addthenew(),
      },
    );
  }
}



