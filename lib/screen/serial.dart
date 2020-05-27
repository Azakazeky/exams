import 'package:flutter/material.dart';
import 'package:exam01/screen/candiate.dart';

class SerialScreen extends StatelessWidget {
  static const routName = '/serialPage';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'asset/img/1.jpg',
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10,
        ),
        Image.asset(
          'asset/img/2.jpg',
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'License Key',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: 350,
          child: Divider(
            thickness: 3,
            color: Colors.grey[500],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "License Key",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: TextField(
                cursorColor: Colors.black,
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, Login.routName),
              child: Container(
                width: 75,
                height: 30,
                color: Colors.blue[700],
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(3),
                child: Text(
                  'Submit',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
