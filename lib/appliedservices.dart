import 'package:flutter/material.dart';
import 'Appcolor.dart';
import 'dashboard.dart';
import 'stepper.dart';

class Appliedservice extends StatelessWidget {
  const Appliedservice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Container(
            padding: EdgeInsets.all(18),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard()),
                );
              },

              child: Image.asset(
                "assets/icon/backmenu.png",
              ),
            )),
        title: Text("Applied Services"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Card(
              color: AppColors.darkblue,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                    child: Image.asset(
                      "assets/icon/legalwhite.png",
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
                              fontSize: 12,color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Tracking ID: HOMEXP- 876487",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 12,color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "18 Aug, 12:13 PM",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: Column(

                      children: [
                        Text(
                          "Current  Stage",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,color: Colors.white),
                        ),
                        RaisedButton(
                            color: AppColors.pink,
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "PENDEING" ,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 8),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/icon/legalgrey.png",
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
                  SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: Column(

                      children: [
                        Text(
                          "Current  Stage",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,color: Colors.black),
                        ),
                        RaisedButton(
                            color: AppColors.pink,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyHomePage()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(
                              "UNDER PROGRES" ,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 8),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}