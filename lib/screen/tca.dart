import 'package:flutter/material.dart';

class ProctorAccessLogin extends StatelessWidget {
  static const routName = '/method/ProctorAccess';
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
            'Proctor Acces Login',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Proctor UserName',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Enter Your User Name',
                    filled: true,
                    fillColor: Colors.white),
                    
              )
            ],
          ),
        ],
      ),
    );
  }
}
