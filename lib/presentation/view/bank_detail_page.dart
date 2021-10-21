import 'package:flutter/material.dart';
import 'package:project/model/bank_model.dart';

class BankDetail extends StatelessWidget {
  final Bank bank;
  const BankDetail({Key? key, required this.bank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 15,
          title: Text("HyperLedger Fabric"),
          actions: [
            Icon(
              Icons.notifications,
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
          backgroundColor: Colors.blue[500],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  width: 350,
                  height: 170,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset.fromDirection(45))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 29,
                        top: 22,
                        child: Text(
                          bank.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 58,
                        child: Text(
                          "Issue Date",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 75,
                        child: Text(
                          "29 oktober 2021",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 29,
                        top: 58,
                        child: Text(
                          "Expiry Date",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 29,
                        top: 75,
                        child: Text(
                          "2 Januari 2022",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 29,
                        top: 120,
                        child: Row(
                          children: [
                            Text(
                              "Beneficiary:",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              bank.beneficiary,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 29,
                        top: 20,
                        child: Text(
                          bank.nominal,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        right: 29,
                        top: 120,
                        child: Text(
                          bank.statusName,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
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
