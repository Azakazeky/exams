import 'package:exam01/screen/candiate.dart';
import 'package:flutter/material.dart';
import 'screen/home.dart';
import 'screen/serial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter APP',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
       // home: MyHomePage(), //to inital your first rout (by defult set '/')
        routes: {
          '/serial': (context) => SerialScreen(),
          '/login': (context) => Login(),
          '/': (context) => MyHomePage(),
          //   'transfer_screen': (context) => TransferScreen()
        });
  }
}
