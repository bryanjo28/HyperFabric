import 'package:flutter/material.dart';
import 'package:project/presentation/view/bank_list.dart';

class Operation extends StatelessWidget {
  const Operation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.only(left: 16),
                            height: 64,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/new.png'))),
                          ),
                          Text(
                            "New BG",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 64,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/redeem.png'))),
                          ),
                          Text(
                            "Redeem",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => BankList(),
                            ),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              height: 64,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(12),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/status.png'))),
                            ),
                            Text(
                              "Status",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8),
                            height: 64,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/report.png'))),
                          ),
                          Text(
                            "Report",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
