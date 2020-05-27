import 'package:flutter/material.dart';
import 'package:exam01/screen/accessmethod.dart';

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
          Container(
            height: 300,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Proctor UserName',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      'Proctor Password',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        style: TextStyle(fontSize: 14, height: 0.5),
                        decoration: const InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'ُEnter Your user name',
                          helperText:
                              'this note for help you, this is just a demo.',
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      child: TextField(
                        style: TextStyle(fontSize: 14, height: 0.5),
                        decoration: const InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          hintText: 'ُEnter Your Password',
                          helperText:
                              'this note for help you, this is just a demo.',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.blue[500],
                      child: FlatButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, AccessMethod.routName),
                        child: Text(
                          'Access Method',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
