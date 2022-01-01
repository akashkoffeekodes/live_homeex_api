import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Appcolor.dart';
import 'dashboard.dart';

class Eligibility extends StatefulWidget {
  const Eligibility({Key key}) : super(key: key);

  @override
  _EligibilityState createState() => _EligibilityState();
}

class _EligibilityState extends State<Eligibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Image.asset(
            "assets/icon/backmenu.png",
          ),
        ),
        title: Text(
          "Loan Eligibility",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon/legal.png",
                        height: 30,
                        width: 75,
                      ),
                      Column(
                        children: [
                          Text(
                            "Share your requirements with ",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 8),
                          ),
                          Text(
                            " us and we'll get back to you within 24 hrs.",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 8),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: AppColors.pink,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "CONTACT US NOW ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 8),
                          )),
                    ],
                  ),
                ),
              ),
            ),




            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Loan Amout",
                              style: TextStyle(
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 12),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.textfeild,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            hintText: "200000",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Profession",
                              style: TextStyle(
                                  fontFamily: "RobotoCondensed-Regular",
                                  fontSize: 12),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.textfeild,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            hintText: "Salaried",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Net Income per month",
                              style: TextStyle(
                                  fontFamily: "RobotoCondensed-Regular",
                                  fontSize: 12),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.textfeild,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            hintText: "20000",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Existing EMI Running Amount ",
                              style: TextStyle(
                                  fontFamily: "RobotoCondensed-Regular",
                                  fontSize: 12),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            isDense: true,
                            fillColor: AppColors.textfeild,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            hintText: "5500",
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Tenure (Year)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 150,
                              child: TextFormField(
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                                decoration: InputDecoration(
                                  isDense: true,
                                  fillColor: AppColors.textfeild,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide:
                                        const BorderSide(color: Colors.red),
                                  ),
                                  hintText: "15",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Interest Rate (% P.A.)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 150,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                isDense: true,
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                ),
                                hintText: "8.65%",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: ButtonTheme(
                        minWidth: 280,
                        child: RaisedButton(
                          onPressed: () {},
                          color: AppColors.darkblue,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "RobotoCondensed-Regular"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),




            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Your EMI Per Month",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/pinkdot.png",
                            height: 10,
                            width: 10,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "₹ 9,996.00",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Column(
                    children: [
                      Text(
                        "Your EMI Per Month",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/bluedot.png",
                            height: 10,
                            width: 10,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "₹ 9,996.00",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 15),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/icon/pichart.png",
                  height: 118,
                  width: 118,
                )),

            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: ButtonTheme(
                minWidth: 300,

                child: RaisedButton(
                    color: AppColors.pink,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      "APPLY FOR LOAN ",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoCondensed-Bold",
                          fontSize: 8),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
