import 'package:flutter/material.dart';

class AuthCode extends StatelessWidget {
  static const routName = '/method/auth';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
            'Enter Your Authorization Code',
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Authorization Code'),
              Container(
                width: 200,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 14, height: 1),
                  decoration: const InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintText: 'ُEnter Your Authorization Code',
                    helperText: 'this note for help you, this is just a demo.',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          FlatButton(
            onPressed: () {},
            child: Container(
              width: 75,
              height: 30,
              color: Colors.blue[700],
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(3),
              child: Text(
                'Next >>',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
