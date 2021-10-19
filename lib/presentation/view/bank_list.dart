import 'package:flutter/material.dart';

class BankList extends StatefulWidget {
  const BankList({Key? key}) : super(key: key);

  @override
  _BankListState createState() => _BankListState();
}

List<Car> cars = [
  Car(1, "PT BANK BCA", "Active", "term and conditions", false),
  Car(2, "PT BANK BCA", "Active", "term and conditions", false),
  Car(3, "PT BANK BCA", "Active", "term and conditions", false),
];

class _BankListState extends State<BankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              cars[panelIndex].isExpanded = !isExpanded;
            });
          },
          children: cars.map((car) {
            return ExpansionPanel(
                isExpanded: car.isExpanded,
                headerBuilder: (bc, status) {
                  return Container(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(car.name),
                    ),
                  );
                },
                body: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 100,
                      child: Text(car.description),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      child: Text(car.status),
                    ),
                  ],
                ));
          }).toList(),
        ),
      ),
    );
  }
}

class Car {
  int id;
  String name;
  String status;
  String description;
  bool isExpanded;
  Car(this.id, this.name, this.description, this.status, this.isExpanded);
}
