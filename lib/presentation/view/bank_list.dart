import 'package:flutter/material.dart';
import 'package:project/model/bank_model.dart';

class BankList extends StatefulWidget {
  const BankList({Key? key}) : super(key: key);

  @override
  _BankListState createState() => _BankListState();
}

class _BankListState extends State<BankList> {
  int status = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, bottom: 13, top: 10),
        child: Column(
          children: [
            Text(
              "My Bank Guarantee",
              style: TextStyle(
                fontSize: 36,
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: banks.length,
                itemBuilder: (context, index) {
                  var current;
                  return Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    height: 100,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: Colors.white,
                      border: Border.all(color: Colors.blue, width: 1),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 29,
                          top: 20,
                          child: Text(banks[index].name),
                        ),
                        Positioned(
                          left: 29,
                          top: 40,
                          child: Text(
                            banks[index].statusName,
                            style: TextStyle(
                                color: current == status
                                    ? Colors.red
                                    : Colors.blue,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            left: 29,
                            top: 55,
                            child: Row(
                              children: [
                                Text("Beneficiary:"),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  banks[index].beneficiary,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Positioned(
                          right: 29,
                          top: 20,
                          child: Text(
                            banks[index].nominal,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}


// child: ExpansionPanelList(
//                 expansionCallback: (panelIndex, isExpanded) {
//                   setState(() {
//                     banks[panelIndex].isExpanded = !isExpanded;
//                   });
//                 },
//                 children: banks.map((bank) {
//                   return ExpansionPanel(
//                       isExpanded: bank.isExpanded,
//                       headerBuilder: (bc, status) {
//                         return Container(
//                           child: Container(
//                             padding: EdgeInsets.all(10),
//                             child: Text(bank.name),
//                           ),
//                         );
//                       },
//                       body: Row(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(10),
//                             height: 100,
//                             child: Text(bank.description),
//                           ),
//                         ],
//                       ));
//                 }).toList(),
//               ),

