import 'package:flutter/material.dart';
import 'package:owly/home_page.dart';
import 'package:owly/login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OWLY Mobile Frontend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Ubuntu'
      ),
      //home: HomePage(),
      home: Login(),
    );
  }
}