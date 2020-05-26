import 'package:flutter/material.dart';
import 'package:exam01/screen/serial.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: SerialScreen());
  }
}
