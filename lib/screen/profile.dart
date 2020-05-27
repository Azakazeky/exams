import 'package:flutter/material.dart';
import 'accessmethod.dart';
class Profile extends StatelessWidget {
  static const routName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          Text('Profile Picture'),
          Image.asset(
            'asset/img/3.png',
            width: 180,
            height: 180,
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text('Name'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('abdelrahman'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text('Email'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('YourEmail@email.com'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        Text('Phone'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('020 101 010 9411'),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Edit Name',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Edit Email',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Edit Phone',
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
        Container(color: Colors.cyanAccent,
          child: FlatButton(
            onPressed:()=> Navigator.pushNamed(context,AccessMethod.routName ), 
            child: Text('Access Method',
            style: TextStyle(color: Colors.black87,
              fontSize: 28,fontWeight: FontWeight.bold),),)),
        ],
        
      ),
    );
  }
}
