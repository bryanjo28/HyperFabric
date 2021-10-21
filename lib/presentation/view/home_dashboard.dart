import 'package:flutter/material.dart';
import 'package:project/widgets/card_bank_information.dart';
import 'package:project/widgets/operation.dart';

class DashboardHome extends StatefulWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  _DashboardHomeState createState() => _DashboardHomeState();
}

class _DashboardHomeState extends State<DashboardHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              CardBankInformation(),
              Container(
                child: Operation(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
