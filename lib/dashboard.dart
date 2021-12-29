import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/alert.dart';
import 'List.dart';
import 'homepage.dart';
import 'profile.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (ctx) => Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Age'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Submit'))
                ],
              ),
            ));
  }



  @override
  int _currentIndex = 0;
  int _pState = 0;

  var pages = [
    new Homepage(),
    new Listview(),
    new Homepage(),
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
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

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
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                      onTap: () {},
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
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
                      height: 30,
                    ),
                    title: new Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/heart.png",
                      height: 20,
                    ),
                    title: new Text(
                      "Short listed",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: InkWell(
                        onTap: () {
                          _showModalBottomSheet();
                        },
                        child: Image.asset(
                          "assets/icon/add.png",
                          height: 20,
                        )),
                    title: new Text(
                      "Post",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/aleart.png",
                      height: 20,
                    ),
                    title: new Text(
                      "Aleart",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
                    ),
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      "assets/icon/profile.png",
                      height: 20,
                    ),
                    title: new Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: 'RobotoCondensed-Regular', fontSize: 10),
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

   _showModalBottomSheet() {
     showModalBottomSheet(
       context: context,
       builder: (context) {
         return Container(

            decoration: BoxDecoration(

              borderRadius: BorderRadius.only(
                topRight: Radius.circular(50.0),
                topLeft: Radius.circular(50.0),

              ),
              color: AppColors.bottomsheet,
            ),

           height: 250,
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
               SizedBox(height: 15,),
               Row(

                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Image.asset("assets/icon/sharevia.png",height: 30,width: 30,),
                   ),
                   SizedBox(width: 20,),
                   Column(crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                       Text("Save",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),
                       Text("Share this file",style: TextStyle(fontSize: 10,fontFamily: "RobotoCondensed-Regular",color: Colors.black),)
                     ],
                   ),

                 ],
               ),
               SizedBox(height: 15,),
               Row(

                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Image.asset("assets/icon/link.png",height: 30,width: 30,),
                   ),
                   SizedBox(width: 20,),
                   Column(crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                       Text("Save",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),

                     ],
                   ),

                 ],
               ),
               SizedBox(height: 15,),
               Row(

                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Image.asset("assets/icon/Vector.png",height: 30,width: 30,),
                   ),
                   SizedBox(width: 20,),
                   Column(crossAxisAlignment: CrossAxisAlignment.start,

                     children: [
                       Text("Save",style: TextStyle(fontSize: 14,fontFamily: "RobotoCondensed-Bold",color: Colors.black),),

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


