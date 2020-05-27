import 'package:flutter/material.dart';
import 'screen/tca.dart';
import 'screen/home.dart';
import 'screen/serial.dart';
import 'screen/profile.dart';
import 'screen/authcode.dart';
import 'screen/candiate.dart';
import 'screen/choseyexam.dart';
import 'screen/vouchercode.dart';
import 'screen/accessmethod.dart';

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
          '/': (context) => MyHomePage(),
          '/serial': (context) => SerialScreen(),
          '/login': (context) => Login(),
          '/profile': (context) => Profile(),
          '/method': (context) => AccessMethod(),
          '/method/ProctorAccess':(context)=>ProctorAccessLogin(),
          '/method/chosseexam':(context)=>ChosseYourExam(),
          '/method/voucher':(context)=>VoucherCode(),
          '/method/auth':(context)=>AuthCode(),
        });
  }
}
