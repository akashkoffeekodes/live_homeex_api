import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Appcolor.dart';

class Userloandetail extends StatefulWidget {
  const Userloandetail({Key key}) : super(key: key);

  @override
  _UserloandetailState createState() => _UserloandetailState();
}

class _UserloandetailState extends State<Userloandetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: AppColors.grey,
            height: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: Image.asset(
                    "assets/image/userimg.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Smart Home",
                        style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold",
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Smarthome@gmail.com",
                        style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular",
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/icon/location.png",
                            height: 13,
                            width: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Surat",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10,
                                color: AppColors.pink),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 137,
            width: 368,

            child: Card(
              color: AppColors.darkblue,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
Padding(
  padding: const EdgeInsets.all(15),
  child:   Image.asset("assets/icon/userdetail.png",height: 44,width: 44,),
),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,bottom: 10,left: 140),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("HomeLoan",style: TextStyle(fontFamily: "RobotoCondensed-Bold",color: Colors.white),),
                              Text("Tracking ID: HOMEXP- 974488",style: TextStyle(fontFamily: "RobotoCondensed-Regular",color: Colors.white,fontSize: 10),),
                              Text("18 Aug, 12:13 PM",style: TextStyle(fontFamily: "RobotoCondensed-Regular",color: Colors.white,fontSize: 10),),
                            ],
                        ),
                      ),

                    ],
                  ),
                  Image.asset("assets/icon/pro.png",width: 325),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Text("Requested Loan Amount",style: TextStyle(fontFamily: "RobotoCondensed-Regular",color: Colors.white,fontSize: 10),),
                        SizedBox(width: 130,),
                        Text("₹.85,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",color: Colors.white,fontSize: 14),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
              padding: EdgeInsets.only(
                left: 15,
                bottom: 10,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                "Loan Detail",
                style:
                    TextStyle(fontFamily: "RobotoCondensed-Bold", fontSize: 14),
              )),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    initialValue: "Akash",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "User Name",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "8866609678",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Mobile No:",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "akash@gamil.com",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Email",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "A 253 avadh residencey",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Locally",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "1-21-2201",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      hintText: "Akash",
                      suffixStyle:
                          TextStyle(fontFamily: "RobotoCondensed-Bold"),
                      prefixText: "Date of Birth",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "Self Employe",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Type of Employe",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "akash ganga",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Company Name",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "IT Company",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Company Type",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "250000",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Last Year Profit",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "25000",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Monthely Pay EMI",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "80000000",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Property Type",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "12",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Year in current Business",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "10 year",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Create Time",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue: "Application  Login sucessfully",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Current Status",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  TextFormField(
                    initialValue:
                        "Want to buy this world but not able to do this",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //topRight: Radius.circular(20),
                            //topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            //  topRight: Radius.circular(20),
                            //  topLeft: Radius.circular(20),
                            ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      prefixText: "Massage",
                      prefixStyle: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                      ),
                    ),
                  ),
                  ButtonTheme(
                    height: 45,
                    minWidth: 300,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 15, bottom: 15, left: 15),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Userloandetail2()),
                          );
                        },
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "Cancel Loan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: "RobotoCondensed-Bold"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}


class Userloandetail2 extends StatelessWidget {
  const Userloandetail2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Cancel Loan Application",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
              Text("Cancel your loan application",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
              SizedBox(height: 30,),
              Image.asset("assets/icon/cancelloan.png",height: 196,width: 308,),
              SizedBox(height: 30,),

                Container(
                    alignment: Alignment.topLeft,
                    child: Text("Enter a Valid Reason For Cancel Loan",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),)),
              SizedBox(height: 10,),
              Container(
                height: 150,
                width: 350,
                child: Card(

                ),
              ),
              SizedBox(height: 10,),
              ButtonTheme(
                minWidth: 300,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Userloandetail2()),
                    // );
                  },
                  color: AppColors.darkblue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "YES",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "RobotoCondensed-Bold"),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              ButtonTheme(
                minWidth: 300,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Userloandetail2()),
                    // );
                  },
                  color: AppColors.darkblue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "NO",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: "RobotoCondensed-Bold"),
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
