import 'package:flutter/material.dart';
import 'Appcolor.dart';

class LoanDetail extends StatefulWidget {
  const LoanDetail({Key key}) : super(key: key);

  @override
  _LoanDetailState createState() => _LoanDetailState();
}

class _LoanDetailState extends State<LoanDetail> {
  bool sagar=true;
  bool visible = true;
  bool visible1 = true;
  bool visible2 = true;
  @override
  Widget build(BuildContext context) {
    var isVisible;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/icon/backmenu.png",
            ),
          ),
        ),
        title: Text(
          "Loan Detail",
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
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Card(
                color: AppColors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/icon/bob.png",
                        width: 61,
                        height: 58,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Intrest rate:",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10),
                        ),
                        Text(
                          "8.90%",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 24),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ButtonTheme(
                      minWidth: 25,
                      height: 25,
                      child: RaisedButton(
                        color: AppColors.pink,
                        onPressed: () {
                          setState(() {
                            visible = !visible;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 10,
                            )),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Visibility(
                visible: visible,
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  height: 150,
                  width: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Loan amount on property value                            ₹.80,00, 000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("EMI on maximum loan:                                               ₹.55,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Tenure :                                                                           15 Year",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Processing Fees:                                                                   0%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Register Mortgage                                                                Yes",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Refer & Earn up to                                                       ₹.25,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),

                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Card(
                color: AppColors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/icon/icici_bank_logo_symbol 1.png",
                        width: 61,
                        height: 58,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Intrest rate:",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10),
                        ),
                        Text(
                          "8.90%",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 24),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ButtonTheme(
                      minWidth: 25,
                      height: 25,
                      child: RaisedButton(
                        color: AppColors.pink,
                        onPressed: () {
                          setState(() {
                            visible1=!visible1;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 10,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
                visible: visible1,
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  height: 150,
                  width: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Loan amount on property value                            ₹.80,00, 000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("EMI on maximum loan:                                               ₹.55,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Tenure :                                                                           15 Year",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Processing Fees:                                                                   0%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Register Mortgage                                                                Yes",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Refer & Earn up to                                                       ₹.25,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),

                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
              child: Card(
                color: AppColors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/icon/hdfc-home-loan-logo-860185B27B-seeklogo 1.png",
                        width: 61,
                        height: 58,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Intrest rate:",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10),
                        ),
                        Text(
                          "8.90%",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 24),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ButtonTheme(
                      minWidth: 25,
                      height: 25,
                      child: RaisedButton(
                        color: AppColors.pink,
                        onPressed: () {
                          setState(() {
                            visible2 =! visible2;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("Apply",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 10,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
                visible: visible2,
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  height: 150,
                  width: 350,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Loan amount on property value                            ₹.80,00, 000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("EMI on maximum loan:                                               ₹.55,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Tenure :                                                                           15 Year",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Processing Fees:                                                                   0%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Register Mortgage                                                                Yes",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset("assets/icon/click.png",height: 11,width: 11,),
                          SizedBox(width: 5,),
                          Text("Refer & Earn up to                                                       ₹.25,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)
                        ],
                      ),

                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
