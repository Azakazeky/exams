import 'package:flutter/material.dart';

class VoucherCode extends StatelessWidget {
  static const routName = '/method/voucher';
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
            'Enter Your Voucher Code',
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
        ],
      ),
    );
  }
}
