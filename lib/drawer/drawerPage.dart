import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/homepage.dart';
import 'package:home_ex/user/login.dart';
import 'package:home_ex/user/register.dart';

import 'applyloan.dart';
import '../myloan.dart';
import 'balance.dart';
import 'legalservice.dart';
import 'loaneligibi.dart';

class drawerPage extends StatefulWidget {
  const drawerPage({Key key}) : super(key: key);

  @override
  _drawerPageState createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {
  var my_list = [Loginpage(), Register()];
  int selected_index = 0;

  void setIndex(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: ListView(
          children: [
            DrawerHeader(
              child: Container(
                width: 20,
                color: AppColors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/image/userimg.png",
                      height: 58,
                      width: 58,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Smart Homes",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Smarthome@gmail.com",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/icon/location.png",
                                height: 10,
                                width: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Surat",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 10,
                                    color: AppColors.pink),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/home.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Home",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Homepage()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Row(children: [
                  Image.asset("assets/icon/packages.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Packages",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
               // Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()),);
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/apply loan.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Apply Loan",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>Applyloan()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/legalservice.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Legal Services",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Legalservice()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/loaneleigbility.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Loan Eligibility",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Eligibility()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/balancetransfer.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Balance Transfer",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Balance ()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/agent.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Become Agent",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
            ),
            Image.asset("assets/icon/divider.png"),


            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/about.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("About",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myloan()),
                );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/contact.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Contact",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Loginpage()),);
                //
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/terms.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Terms Condication",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Loginpage()),
                // );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/privacy.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Privacy Policy",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Loginpage()),
                // );
              },
            ),
            ListTile(
              title: Container(child:Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 8, 8),
                child: Row(children: [
                  Image.asset("assets/icon/logout.png",height: 20,width: 20,),
                  SizedBox(width: 20,),
                  Text("Log Out",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                ],),
              )),
              onTap: () {
                setIndex(0);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Loginpage()),
                // );
              },
            ),



            Image.asset("assets/icon/divider.png"),
            //for Login register
            ListTile(
              title: Text('Click For Register',style: TextStyle(fontSize: 10),),
              onTap: () {
                setIndex(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );
              },
            ),
            ListTile(
              title: Text('Click For Login',style: TextStyle(fontSize: 10),),
              onTap: () {
                setIndex(1);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
