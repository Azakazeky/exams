import 'package:exam01/screen/profile.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const routName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
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
                'Candite Login',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                child: Divider(
                  thickness: 3,
                  color: Colors.grey[500],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text("Organization"),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: DropdownButton<String>(
                        value: dropdownValue,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurple,
                        ),
                        items: <String>[
                          'Pre_registered user',
                          'European university for modern scince',
                          'Jefferson University',
                          'National Education Network',
                          'Michigan Academy',
                          'Quadrabay'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 11),
                            ),
                          );
                        }).toList(),
                        onChanged: (newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        }),
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text("Username / ID"),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text("Password"),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () => Navigator.pushNamed(context, Profile.routName),
                child: Container(
                  width: 75,
                  height: 30,
                  color: Colors.blue[700],
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(3),
                  child: Text(
                    'LogIn',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
