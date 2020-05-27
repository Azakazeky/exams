import 'package:flutter/material.dart';
import 'package:exam01/compant.dart';

class ChosseYourExam extends StatefulWidget {
  static const routName = '/method/chosseexam';

  @override
  _ChosseYourExamState createState() => _ChosseYourExamState();
}

class _ChosseYourExamState extends State<ChosseYourExam> {
  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_companies);
    _selectedCompany = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Company>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<Company>> items = List();
    for (Company company in companies) {
      items.add(
        DropdownMenuItem(
          value: company,
          child: Text(company.name),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }

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
                  Container(
                    width: 200,
                    child: DropdownButton(
                      value: _selectedCompany,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: DropdownButton(
                      value: _selectedCompany,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 200,
                    child: DropdownButton(
                      value: _selectedCompany,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,
                    ),
                  ),
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
