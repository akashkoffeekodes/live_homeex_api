import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/alert.dart';
import 'package:home_ex/drawer/balance.dart';
import 'List.dart';
import 'drawer/emicalculator.dart';
import 'homepage.dart';
import 'drawer/loaneligibi.dart';
import 'salerent.dart';
import 'user/profile.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {



bool isvisible = true;

  @override
  int _currentIndex = 0;
  int _pState = 0;

  var pages = [
    new Homepage(),
    new Listview(),
    new Salerent(),
    new Alert(),
    new Profilepage()
  ];

  Widget build(BuildContext context) {
    return Scaffold(

        body: pages[_currentIndex],

        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),

            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _currentIndex,
                selectedItemColor: AppColors.pink,
                unselectedItemColor: Colors.white,
                backgroundColor: AppColors.darkblue,

                onTap: onTappedChanged,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/whitehome.png",
                      height: 20,
                      color: Colors.white,

                    ),
                    activeIcon: Image.asset("assets/icon/whitehome.png",height: 20,color: AppColors.pink,),

                    title: new Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10,color: Colors.white),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/heart.png",
                      height: 20,
                    ),
                    activeIcon: Image.asset("assets/icon/heart.png",height: 20,color: AppColors.pink,),
                    title: new Text(
                      "Short listed",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10,color: Colors.white
                      ),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                      onTap: (){

                       // Navigator.push(context, MaterialPageRoute(builder: (context) => Salerent()),);
                      },

                      child: Image.asset(
                        "assets/icon/add.png",
                        height: 20,
                      ),
                    ),activeIcon: Image.asset("assets/icon/add.png",height: 20,color: AppColors.pink,),
                    title: new Text(
                      "Post",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10,color: Colors.white),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/aleart.png",
                      height: 20,
                    ),
                    activeIcon: Image.asset("assets/icon/aleart.png",height: 20,color: AppColors.pink,),
                    title: new Text(
                      "Aleart",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10,color: Colors.white),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/profile.png",
                      height: 20,
                    ),
                    activeIcon: Image.asset("assets/icon/profile.png",height: 20,color: AppColors.pink,),
                    title: new Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10,color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  void onTappedChanged(int index) {
    setState(() {
      _currentIndex = index;
      _pState = _currentIndex;
    });
  }


}


