 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvpflutter/view/myhomePage.dart';
import 'package:mvpflutter/presenter/presenter.dart';
void main()=> runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(new BasicAppPresenter())
    );
  }
}