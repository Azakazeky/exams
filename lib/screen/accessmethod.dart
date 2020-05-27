import 'package:exam01/screen/choseyexam.dart';
import 'package:exam01/screen/vouchercode.dart';
import 'package:flutter/material.dart';
import 'package:exam01/screen/tca.dart';

class AccessMethod extends StatelessWidget {
  static const routName = '/method';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: <
          Widget>[
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
          'Chosse Your Access Method',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 350,
          child: Divider(
            thickness: 3,
            color: Colors.grey[500],
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 140,
                    child: FlatButton(
                      onPressed: () => Navigator.pushNamed(
                          context, ProctorAccessLogin.routName),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                'asset/img/am1.png',
                              ),
                            ),
                            Text('Test Center Admin')
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    height: 140,
                    child: FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, ChosseYourExam.routName),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'asset/img/am1.png',
                            ),
                            Text('Profile Name')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 180,
                    height: 140,
                    child: FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, VoucherCode.routName),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'asset/img/vc.jpg',
                            ),
                            Text('Voucher Code')
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 180,
                    height: 140,
                    child: FlatButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, ChosseYourExam.routName),
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset(
                              'asset/img/ac.jpg',
                            ),
                            Text('Auth Code')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
