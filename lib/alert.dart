import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';

class Alert extends StatelessWidget {
  const Alert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Container(
            padding: EdgeInsets.all(18),
            child: Image.asset(
              "assets/icon/backmenu.png",
            )),
        title: Text("Alerts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/alert.png",
              height: 162,
              width: 155,
            ),
            Container(
                alignment: Alignment.center,
                child: Text(
                  "No notifications yet !",
                  style: TextStyle(
                      fontFamily: 'RobotoCondensed-Bold', fontSize: 10),
                )),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
                color: AppColors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alert2()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "CONTINUE SERACH ",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "RobotoCondensed-Bold",
                      fontSize: 15),
                )),
          ],
        ),
      ),
    );
  }
}

class Alert2 extends StatelessWidget {
  const Alert2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Container(
            padding: EdgeInsets.all(18),
            child: Image.asset(
              "assets/icon/backmenu.png",
            )),
        title: Text("Alerts"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Container(
              height: 90,
              width: 378,
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/image/personal.png",
                        height: 54,
                        width: 48,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal Loan ",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tracking ID: HOMEXP- 876487",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "18 Aug, 12:13 PM",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Image.asset(
                        "assets/icon/delete.png",
                        width: 16,
                        height: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Container(
              height: 90,
              width: 378,
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icon/homeloan.png",
                        height: 54,
                        width: 48,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal Loan ",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tracking ID: HOMEXP- 876487",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "18 Aug, 12:13 PM",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 60),
                      child: Image.asset(
                        "assets/icon/delete.png",
                        width: 16,
                        height: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
