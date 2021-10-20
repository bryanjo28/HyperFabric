import 'package:flutter/material.dart';

class BankList extends StatefulWidget {
  const BankList({Key? key}) : super(key: key);

  @override
  _BankListState createState() => _BankListState();
}

List<Bank> banks = [
  Bank(1, "PT BANK BCA", "Active", "term and conditions", false),
  Bank(2, "PT BANK BCA", "Active", "term and conditions", false),
  Bank(3, "PT BANK BCA", "Active", "term and conditions", false),
];

class _BankListState extends State<BankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              banks[panelIndex].isExpanded = !isExpanded;
            });
          },
          children: banks.map((bank) {
            return ExpansionPanel(
                isExpanded: bank.isExpanded,
                headerBuilder: (bc, status) {
                  return Container(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(bank.name),
                    ),
                  );
                },
                body: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      child: Text(bank.description),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      child: Text(bank.status),
                    ),
                  ],
                ));
          }).toList(),
        ),
      ),
    );
  }
}

class Bank {
  int id;
  String name;
  String status;
  String description;
  bool isExpanded;
  Bank(this.id, this.name, this.description, this.status, this.isExpanded);
}
