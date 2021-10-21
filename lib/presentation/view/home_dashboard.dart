import 'package:flutter/material.dart';
import 'package:project/presentation/view/bank_detail_page.dart';
import 'package:project/widgets/card_bank_information.dart';
import 'package:project/widgets/operation.dart';
import 'package:project/model/bank_model.dart';

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
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Transaction History",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        height: 200,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: banks.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => BankDetail(
                                    bank: banks[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom: 10, right: 10),
                              height: 100,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 1),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    left: 15,
                                    top: 20,
                                    child: Text(
                                      banks[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    top: 40,
                                    child: Text(
                                      banks[index].statusName,
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    top: 95,
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
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    top: 125,
                                    child: Row(
                                      children: [
                                        Text("Expiry Date:"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "31 Dec 2021",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 15,
                                    top: 60,
                                    child: Text(
                                      banks[index].nominal,
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Positioned(
                                    right: 29,
                                    top: 160,
                                    child: Text(
                                      "more >",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
