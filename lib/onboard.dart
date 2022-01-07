import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/dashboard.dart';
import 'package:onboarding/onboarding.dart';

import 'homepage.dart';
import 'user/login.dart';

class ONboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        background: Colors.white,
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonColor: Colors.white

        ),
        pages: [


          PageModel(
            widget: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.18
                    ),
                    Image.asset('assets/image/darklogo.png', height: 100, width: 141),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.04
                    ),
                    Image.asset(
                      'assets/image/slider1.png',
                      height: 208,
                      width: 226,
                    ),

                    Column(
                      children: [
                        Text(
                          'Find and select your best ',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                        Text(
                          'suitable property',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.1
                    ),

                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => DashBoard()),
                          );
                        },
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          PageModel(
            widget: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height*16
                    ),
                    Image.asset('assets/image/darklogo.png', height: 100, width: 141),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.04
                    ),
                    Image.asset(
                      'assets/image/slider2.png',
                      height: 208,
                      width: 226,
                    ),

                    Column(
                      children: [
                        Text(
                          'Find and select your best ',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                        Text(
                          'suitable property',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.1
                    ),

                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => DashBoard()),
                          );
                        },
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          PageModel(
            widget: SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  children: [
                    SizedBox(
                        height: MediaQuery.of(context).size.height*18
                    ),
                    Image.asset('assets/image/darklogo.png', height: 100, width: 141),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.04
                    ),
                    Image.asset(
                      'assets/image/slider3.png',
                      height: 208,
                      width: 226,
                    ),

                    Column(
                      children: [
                        Text(
                          'Find and select your best ',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                        Text(
                          'suitable property',
                          style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height*.1
                    ),

                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => DashBoard()),
                          );
                        },
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),



        ],
        isSkippable: false,
        indicator: Indicator(
            indicatorDesign: IndicatorDesign.polygon(
            )),
      ),
    );
  }
}
