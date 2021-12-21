import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:onboarding/onboarding.dart';

import 'login.dart';

class ONboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Onboarding(
        background: Colors.white,
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => Loginpage(),
              ),
              (route) => false,
            );
          },
        ),
        pages: [

          PageModel(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/image/darklogo.png', height: 100, width: 100),
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/image/slider1.png',
                  height: 190,
                  width: 190,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        'Find and select your best suitable property',
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {},
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          PageModel(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/image/darklogo.png', height: 100, width: 100),
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/image/slider2.png',
                  height: 190,
                  width: 190,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'We can help you find a loan ',
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 1),
                      child: Text(

                        ' call us - 012 0223',
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {},
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          PageModel(
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/image/darklogo.png', height: 100, width: 100),
                SizedBox(
                  height: 60,
                ),
                Image.asset(
                  'assets/image/slider3.png',
                  height: 190,
                  width: 190,
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Decide if it is for you to sell with',
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'our expert advice',
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    Container(
                      width: 700,
                      child: RaisedButton(
                        onPressed: () {

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Loginpage()
                            ),
                          );

                        },
                        color: AppColors.darkblue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Text("Skip",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),

        ],
        isSkippable: false,
        indicator: Indicator(
            indicatorDesign: IndicatorDesign.polygon(
                polygonDesign: PolygonDesign(
                    polygon: DesignType.polygon_square, polygonSpacer: 13.0))),
      ),
    );
  }
}
