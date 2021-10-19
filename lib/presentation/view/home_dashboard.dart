import 'package:flutter/material.dart';
import 'package:project/widgets/card_bank_information.dart';
import 'package:project/widgets/history_title.dart';

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
            children: [
              CardBankInformation(),
              SizedBox(
                height: 20,
              ),
              Container(
                child: HistoryTitle(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
