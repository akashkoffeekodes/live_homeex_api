import 'package:flutter/material.dart';

import '../Appcolor.dart';
import '../loandetail.dart';

class Balance extends StatefulWidget {
  const Balance({Key key}) : super(key: key);

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);


            },

            child: Image.asset(
              "assets/icon/backmenu.png",
            ),
          ),
        ),
        title: Text(
          "Balance Teansfer",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
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


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Calculate Your Balance Transfer Quickly",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize: 18),),
            ),
            Text("Find out the savings in EMI",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize: 12),),
SizedBox(height: 10,),
            Card(
              child: Column(
                children: [
                  Text("Calculate Your Balance Transfer Quickly",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize: 18),),
                  SizedBox(height: 10,),
                Divider(height: 10, color: Colors.grey,),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Total Outstanding",
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
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Tenure (Year)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Interest Rate (% P.A.)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
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
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Exciting EMI",
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


                ],
              ),

            ),
            Card(
              child: Column(
                children: [
                  Text("New Loan Detail",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize: 18),),
                  SizedBox(height: 10,),
                  Divider(height: 10, color: Colors.grey,),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Tenure (Year)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Interest Rate (% P.A.)",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
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

                ],
              ),
            ),
            SizedBox(height: 15,),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          child: ButtonTheme(
            minWidth: 300,

            child: RaisedButton(
                color: AppColors.darkblue,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Balance2()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Calculate ",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "RobotoCondensed-Bold",
                      fontSize: 15,
                )),
          ),
        ),
        )
        )
          ],
        ),
      ),
    ),

    );

  }
}
class Balance2 extends StatelessWidget {
  const Balance2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);


            },

            child: Image.asset(
              "assets/icon/backmenu.png",
            ),
          ),
        ),
        title: Text(
          "Balance Teansfer",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
body: Padding(
  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
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
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Image.asset("assets/icon/pinkdot.png",height: 13,width: 13,),
            Text("Current Loan Details",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 14),),
            SizedBox(width: 25,),
            Image.asset("assets/icon/bluedot.png",height: 13,width: 13,),
            Text("New Loan Details",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 14),),

          ],
        ),
      ),
 Padding(
   padding: const EdgeInsets.only(top: 10,right: 30,left: 30),
   child: Column(children: [
     Image.asset("assets/icon/Group 339.png",height: 286,width: 314,),
     SizedBox(height: 10,),
     Image.asset("assets/icon/341.png",height: 286,width: 314,)
   ],),
 ),
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            child:
            ButtonTheme(
              minWidth: 300,

              child: RaisedButton(
                color: AppColors.pink,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoanDetail()),
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                    "Apply For Loan",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "RobotoCondensed-Bold",
                      fontSize: 15,
                    )),
              ),
            ),
          )
      )

    ],
  ),
),
    );
  }
}

