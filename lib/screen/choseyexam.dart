import 'package:flutter/material.dart';

class ChosseYourExam extends StatefulWidget {
  static const routName = '/method/chosseexam';

  @override
  _ChosseYourExamState createState() => _ChosseYourExamState();
}

class _ChosseYourExamState extends State<ChosseYourExam> {
  String dropdownValue0;
  String dropdownValue1;
  String dropdownValue2;

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
            'Choose Your Exam',
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
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(
                    height: 38,
                  ),
                  Text("Author"),
                  SizedBox(
                    height: 38,
                  ),
                  Text("Exam"),
                  SizedBox(
                    height: 44,
                  ),
                  Text("Session"),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  DropdownButton<String>(
                      value: dropdownValue0,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepOrange),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurple,
                      ),
                      items: <String>['tow', 'three', 'four', 'one']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue0 = newValue;
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButton<String>(
                      value: dropdownValue1,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepOrange),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurple,
                      ),
                      items: <String>['tow', 'three', 'four', 'one']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue1 = newValue;
                        });
                      }),
                  SizedBox(
                    height: 10,
                  ),
                  DropdownButton<String>(
                      value: dropdownValue2,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepOrange),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurple,
                      ),
                      items: <String>['tow', 'three', 'four', 'one']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue2 = newValue;
                        });
                      }),

                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
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
