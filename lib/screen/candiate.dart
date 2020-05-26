import 'package:flutter/material.dart';
import 'package:exam01/compant.dart';
import 'package:exam01/compant.dart';

class Login extends StatefulWidget {
  static const routName = '/login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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

  List<Company> _companies = Company.getCompanies();
  List<DropdownMenuItem<Company>> _dropdownMenuItems;
  Company _selectedCompany;

  String selecteduser;
                                                             
  onChangeDropdownItem(Company selectedCompany) {
    setState(() {
      _selectedCompany = selectedCompany;
    });
  }

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
              Row(
                children: <Widget>[
                  Text("Organization"),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: DropdownButton(
                      value: _selectedCompany,
                      items: _dropdownMenuItems,
                      onChanged: onChangeDropdownItem,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text('Selected: ${_selectedCompany.name}'),
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
                onPressed: () => Navigator.pushNamed(context, Login.routName),
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
