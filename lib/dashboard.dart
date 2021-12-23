
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/login.dart';

import 'homepage.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  int _currentIndex = 0;
  int _pState = 0;

  var pages = [
    new Homepage(),
    new Homepage(),
    new Homepage(),
    new Homepage(),
    new Loginpage()

  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: pages[_currentIndex],
          bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: AppColors.pink,
            unselectedItemColor: Colors.white,
            backgroundColor: AppColors.darkblue,
            onTap: onTappedChanged,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset("assets/icon/whitehome.png",height: 30,),
                title: new Text(
                  "Home",
                  style:
                  TextStyle(fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icon/heart.png",height: 20,),
                title: new Text(
                  "Short listed",
                  style:
                  TextStyle(fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icon/add.png",height: 20,),
                title: new Text(
                  "Post",
                  style:
                  TextStyle(fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icon/aleart.png",height: 20,),
                title: new Text(
                  "Aleart",
                  style:
                  TextStyle(fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                ),
              ),
              BottomNavigationBarItem(
                icon: Image.asset("assets/icon/profile.png",height: 20,),
                title: new Text(
                  "Profile",
                  style:
                  TextStyle(fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                ),
              ),

            ],
          )),
    );
  }

  void onTappedChanged(int index) {
    setState(() {
      _currentIndex = index;
      _pState = _currentIndex;
    });
  }
}
