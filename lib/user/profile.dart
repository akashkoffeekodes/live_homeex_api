import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/myloan.dart';

import '../appliedservices.dart';
import 'editprofile.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
        content: new Text('Do you want to exit an App',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Regular"),),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
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
              decoration: BoxDecoration(),
              child: Column(
                children: [
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {


                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Editprofilt()),
                          );
                        },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          )),

                        child: Row(
                          children: [
                            Text(
                              "  Edit profile ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 3),
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ()),
                          // );

                        },
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          children: [
                            Text(
                              "My Properties",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 3),
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          children: [
                            Text(
                              "My Booking",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 250),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 3),
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Myloan()),
                          );
                        },
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          children: [
                            Text(
                              "My Loan",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 260),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 3),
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Appliedservice()),
                          );
                        },
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          children: [
                            Text(
                              "Applied Services",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(height: 3),
                  ButtonTheme(
                    minWidth: 350.0,
                    height: 50.0,
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Row(
                          children: [
                            Text(
                              "Change Password",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 10),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 230),
                              child: Image.asset(
                                "assets/icon/suffix.png",
                                height: 14,
                                width: 18,
                              ),
                            ),
                          ],
                        )),
                  ),



                  SizedBox(height: 50,),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child: RaisedButton(
                        color:AppColors.darkblue,
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Editprofilt()),
                          );
                        },
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                        child: Text(
                          "  Log Out ",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 10),
                        )),
                  ),

                ],
              ),
            )
        ],
      ),
          )),
    );
  }
}
