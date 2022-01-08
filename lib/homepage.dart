import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/drawer/legalservice.dart';
import 'package:home_ex/drawer/drawerPage.dart';
import 'package:home_ex/filter.dart';
import 'package:home_ex/propertydetail.dart';

import 'drawer/applyloan.dart';
import 'drawer/balance.dart';
import 'drawer/emicalculator.dart';
import 'drawer/loaneligibi.dart';
import 'loandetail.dart';
import 'user/login.dart';
import 'user/register.dart';
import 'userloandetail.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override

  //for exit
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

bool _isVisible = true;
  //for scroll hide
  ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(

        drawerEnableOpenDragGesture: false,
        drawer: Drawer(
        child: drawerPage(),
        ),
        appBar: AppBar(

          backgroundColor: AppColors.darkblue,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Image.asset(
                "assets/icon/menu.png",
                height: 25,
                width: 19,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),

            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: 60,
            ),
            Image.asset(
              "assets/icon/aapbarlogo.png",
              width: 109,
              height: 49,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Container(
                height: 20,
                child: InkWell(

                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Filter()),
                    );

                  },

                  child: Stack(children: [Container(
                  alignment: Alignment.center,
                  child:Container(
                    height: 22,
                      width: 210,

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),

                        color: Colors.white
                            
                       
                          ),

                  )
                    //Image.asset("assets/icon/Searchbar.png",height: 50,width: 201,),
                  ),
                  Positioned(
                      top: 22,right: 10,
                      child: Image.asset("assets/icon/SSearch.png",height: 18,width: 18,)),
                    Positioned(
                        top: 18,left: 10,
                        child: Image.asset("assets/icon/REpalcegps.png",height: 18,width: 15,))

                  ],
                  //  child: Image.asset("assets/icon/Searchbar.png",),
                  ),
                ),
              ),
            ),
            SizedBox(width: 15),

          ],
        ),
        
        bottomNavigationBar:

        AnimatedContainer(
          height: _showAppbar ? 56.0 : 0.0,
          duration: Duration(milliseconds: 200),
          child: Container(

            child: Row(
              children: [
                SizedBox(width: 10,),
                Expanded(
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Eligibility()),
                      );
                    },
                    child: Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),

                            color: AppColors
                                .darkblue // green as background color
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        height: 30,
                        child: Text("LOAN ELIGIBILITY",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 10,
                                color: Colors.white))),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => EMIcal()),
                      );
                    },
                    child: Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // radius of 10
                            color: AppColors
                                .darkblue // green as background color
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        height: 30,
                        child: Text(
                          "EMI CALCULATOR",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 10,
                              color: Colors.white),
                        )),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Balance()),
                      );

                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            // radius of 10
                            color: AppColors
                                .darkblue // green as background color
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.topLeft,
                        height: 30,
                        child: Text("BALANCE TRANSFE",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize:9,
                                color: Colors.white))),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            ),
          ),
        ),
        body: InkWell(
          onTap: (){
            setState(() {
              _isVisible  =! _isVisible;
            });
          },
          child: SingleChildScrollView(
            controller: _scrollViewController,
            child: Column(
              children: [
                Column(
                  children: [
                    //text box of top
                    Visibility(
                      visible: _isVisible,
                      child: AnimatedContainer(
                        height: _showAppbar ? 56.0 : 0.0,
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          color: AppColors.darkblue,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Row(
                              children: [
                                // SizedBox(
                                //   width: 10,
                                // ),
                                Expanded(
                                  child: ButtonTheme(
                                    height: 25,
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Applyloan()),
                                        );



                                      },
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Text(
                                        "APPLY LOAN",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "RobotoCondensed-bold",fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ButtonTheme(
                                    height: 25,
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Legalservice()),
                                        );

                                      },
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Text(
                                        "LEGAL SERVICE",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "RobotoCondensed-bold",fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: ButtonTheme(
                                    height: 25,
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      child: Text(
                                        "PACKAGE",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "RobotoCondensed-bold",fontSize: 10),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 17),
                      //for user block
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/image/userimg.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Smart Homes",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Posted on 23rd Apr, 2021",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 140, bottom: 15),
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    _showModalBottomSheet();
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/icon/usermenu.png",
                                    height: 15,
                                    width: 5,
                                  ),
                                ),
                              )),

                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        padding: EdgeInsets.only(right: 80),
                        child: Text(
                          "2 & 3 BHK Asha Residential Apartment ",
                          style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 15,
                          ),
                        )),

                    Container(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          "Canal Road, Vesu, Surat ",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10,
                              color: Colors.grey),
                        )),

                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/image/homepageimg.png"),
                    SizedBox(
                      height: 10,
                    ),
                    // below imae
                    Container(

                      height: 40,
                      child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Propertydetail()),
                            );
                          },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Image.asset(
                                "assets/icon/carpetarea.png",
                                height: 20,
                                width: 20,
                              ),
                            ),
                            SizedBox(width: 5,),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Carpet Area",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Regular",
                                        fontSize: 9,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    "2410 sq.ft",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 12,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(color: Colors.grey,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15,),
                              child: Image.asset(
                                "assets/icon/floor.png",
                                height: 20,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15),
                              child: Column(
                                children: [
                                  Text(
                                    "Floor",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Regular",
                                        fontSize: 8,
                                        color: Colors.black54),
                                  ),
                                  Text(
                                    "1/1o",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 11,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(color: Colors.grey,),
                            Padding(

                              padding:
                                  const EdgeInsets.only(left: 10),
                              child: Image.asset(
                                "assets/icon/paisa.png",
                                height: 22,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10),
                              child: Column(
                                children: [
                                  Text(
                                    "85,00,000 L",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 12,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //text Amenities
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Amenities",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),
//for Amenities
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Propertydetail()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5, left: 25),
                                    child: Image.asset(
                                      "assets/icon/home.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                      left: 25,
                                    ),
                                    child: Text(
                                      "Smart Home",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/care.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Parking",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/kidsplayarea.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Kids Play Area",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/gatden.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Smart Home",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Propertydetail()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5, left: 25),
                                    child: Image.asset(
                                      "assets/icon/airconditon.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                      left: 25,
                                    ),
                                    child: Text(
                                      "Air Condtion",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/gym.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "GYM",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/home.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Modular Kitchen",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   width: 35,
                            // ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                                    child: Image.asset(
                                      "assets/icon/jogging.png",
                                      height: 20,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Jogging Track",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),


                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Loan Details",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Propertydetail()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 50,

                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 10,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: Image.asset(
                                        "assets/icon/card.png",
                                        height: 15,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Loan amount on property value",
                                            style: TextStyle(
                                                fontFamily:
                                                "RobotoCondensed-Regular",
                                                fontSize: 8),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 10),
                                          child: Text(
                                            "₹. 80,00,000",
                                            style: TextStyle(
                                                fontFamily: "RobotoCondensed-Bold",
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(

                              width: 170,
                              height: 50,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 10,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: Image.asset(
                                        "assets/icon/card.png",
                                        height: 15,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Loan amount on property value",
                                            style: TextStyle(
                                                fontFamily:
                                                "RobotoCondensed-Regular",
                                                fontSize: 8),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 10),
                                          child: Text(
                                            "₹. 80,00,000",
                                            style: TextStyle(
                                                fontFamily: "RobotoCondensed-Bold",
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Propertydetail()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Container(
                              width: 170,
                              height: 50,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 10,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: Image.asset(
                                        "assets/icon/card.png",
                                        height: 15,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Loan amount on property value",
                                            style: TextStyle(
                                                fontFamily:
                                                "RobotoCondensed-Regular",
                                                fontSize: 8),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 10),
                                          child: Text(
                                            "₹. 80,00,000",
                                            style: TextStyle(
                                                fontFamily: "RobotoCondensed-Bold",
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              height: 50,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                elevation: 10,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: Image.asset(
                                        "assets/icon/card.png",
                                        height: 15,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10),
                                          child: Text(
                                            "Loan amount on property value",
                                            style: TextStyle(
                                                fontFamily:
                                                "RobotoCondensed-Regular",
                                                fontSize: 8),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, left: 10),
                                          child: Text(
                                            "₹. 80,00,000",
                                            style: TextStyle(
                                                fontFamily: "RobotoCondensed-Bold",
                                                fontSize: 10),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),



                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: RaisedButton(
                                color: AppColors.darkblue,
                                onPressed: () {

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Userloandetail()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "      Loan Detail      ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 15),
                                )),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 20),
                            child: RaisedButton(
                                color: AppColors.darkblue,
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                child: Text(
                                  "      Contact us      ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 15),
                                )),
                          ),
                        ],
                      ),
                    ),

                    Divider(color: Colors.grey,),

                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/image/add.png",
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(thickness: 2,color: Colors.grey,),

                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 17),
                      //for user block
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/image/userimg.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Smart Homes",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Posted on 23rd Apr, 2021",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 150, bottom: 15),
                              child: Image.asset(
                                "assets/icon/usermenu.png",
                                height: 20,
                                width: 10,
                              )),
                          Container()
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        padding: EdgeInsets.only(right: 80),
                        child: Text(
                          "2 & 3 BHK Asha Residential Apartment ",
                          style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 15,
                          ),
                        )),

                    Container(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          "Canal Road, Vesu, Surat ",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10,
                              color: Colors.grey),
                        )),

                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/image/homepageimg.png"),
                    SizedBox(
                      height: 10,
                    ),
                    // below imae
                    Container(

                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/icon/carpetarea.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Carpet Area",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 9,
                                      color: Colors.black54),
                                ),
                                Text(
                                  "2410 sq.ft",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Image.asset(
                              "assets/icon/floor.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Floor",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 8,
                                      color: Colors.black54),
                                ),
                                Text(
                                  "1/1o",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 11,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(color: Colors.grey,),
                          Padding(

                            padding:
                            const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icon/paisa.png",
                              height: 22,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10),
                            child: Column(
                              children: [
                                Text(
                                  "85,00,000 L",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //text Amenities
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Amenities",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),

                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/home.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Smart Home",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/care.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Parking",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/kidsplayarea.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Kids Play Area",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/gatden.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Smart Home",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/airconditon.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Air Condtion",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/gym.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "GYM",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/home.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Modular Kitchen",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/jogging.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Jogging Track",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Loan Details",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                      "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: RaisedButton(
                                  color: AppColors.darkblue,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "      Loan Detail      ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: RaisedButton(
                                  color: AppColors.darkblue,
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Userloandetail()),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "      Loan Detail      ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  )),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.grey,),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/image/add.png",
                    )),
                Divider(color: Colors.grey,),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 17),
                      //for user block
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/image/userimg.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Smart Homes",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "Posted on 23rd Apr, 2021",
                                  style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 150, bottom: 15),
                              child: Image.asset(
                                "assets/icon/usermenu.png",
                                height: 20,
                                width: 10,
                              )),
                          Container()
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                        padding: EdgeInsets.only(right: 80),
                        child: Text(
                          "2 & 3 BHK Asha Residential Apartment ",
                          style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 15,
                          ),
                        )),

                    Container(
                        padding: EdgeInsets.only(right: 200),
                        child: Text(
                          "Canal Road, Vesu, Surat ",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 10,
                              color: Colors.grey),
                        )),

                    SizedBox(
                      height: 10,
                    ),
                    Image.asset("assets/image/homepageimg.png"),
                    SizedBox(
                      height: 10,
                    ),
                    // below imae
                    Container(

                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Image.asset(
                              "assets/icon/carpetarea.png",
                              height: 20,
                              width: 20,
                            ),
                          ),
                          SizedBox(width: 8,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 15),
                            child: Column(
                              children: [
                                Text(
                                  "Carpet Area",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 9,
                                      color: Colors.black54),
                                ),
                                Text(
                                  "2410 sq.ft",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(color: Colors.grey,),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,),
                            child: Image.asset(
                              "assets/icon/floor.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,bottom: 5,right: 20),
                            child: Column(
                              children: [
                                Text(
                                  "Floor",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 8,
                                      color: Colors.black54),
                                ),
                                Text(
                                  "1/1o",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 11,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(color: Colors.grey,),
                          Padding(

                            padding:
                            const EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/icon/paisa.png",
                              height: 22,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,bottom: 5,right: 10),
                            child: Column(
                              children: [
                                Text(
                                  "85,00,000 L",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //text Amenities
                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Amenities",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),

                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/home.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Smart Home",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/care.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Parking",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/kidsplayarea.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Kids Play Area",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/gatden.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Smart Home",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/airconditon.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Air Condtion",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/gym.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "GYM",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/home.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Modular Kitchen",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/jogging.png",
                                height: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Jogging Track",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Container(
                        padding: EdgeInsets.only(left: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Loan Details",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                        )),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                  "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                  "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                  "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 170,
                                height: 50,

                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  elevation: 10,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Image.asset(
                                          "assets/icon/card.png",
                                          height: 15,
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 10),
                                            child: Text(
                                              "Loan amount on property value",
                                              style: TextStyle(
                                                  fontFamily:
                                                  "RobotoCondensed-Regular",
                                                  fontSize: 8),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 10),
                                            child: Text(
                                              "₹. 80,00,000",
                                              style: TextStyle(
                                                  fontFamily: "RobotoCondensed-Bold",
                                                  fontSize: 10),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),



                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: RaisedButton(
                                  color: AppColors.darkblue,
                                  onPressed: () {

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Userloandetail()),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "      Loan Detail      ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: RaisedButton(
                                  color: AppColors.darkblue,
                                  onPressed: () {},
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Text(
                                    "      Loan Detail      ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  )),
                            ),
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.grey,),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/image/add.png",
                    )),
                Divider(color: Colors.grey,),





              ],
            ),
          ),
        ),
      ),
    );
  }
  _showModalBottomSheet() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))),
      context: context,
      builder: (context) {
        return Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40)),
              color: AppColors.bottomsheet,
            ),

            height: 280,
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset("assets/icon/bsheetheart.png",height: 30,width: 30,),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Save",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),
                        Text("save this site for latter",style: TextStyle(fontSize: 10,fontFamily: "RobotoCondensed-Regular",color: Colors.black),)
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset("assets/icon/sharevia.png",height: 30,width: 30,),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Share Via",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),
                        Text("Share this file",style: TextStyle(fontSize: 10,fontFamily: "RobotoCondensed-Regular",color: Colors.black),)
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset("assets/icon/link.png",height: 30,width: 30,),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Copy link",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Image.asset("assets/icon/vector.png",height: 30,width: 30,),
                    ),
                    SizedBox(width: 20,),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text("Similar property",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),

                      ],
                    ),

                  ],
                ),
              ],


            )
        );
      },
    );
  }
}
