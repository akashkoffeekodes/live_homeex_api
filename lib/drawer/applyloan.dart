
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Appcolor.dart';

class Applyloan extends StatefulWidget {
  const Applyloan({Key key}) : super(key: key);

  @override
  _ApplyloanState createState() => _ApplyloanState();
}

class _ApplyloanState extends State<Applyloan> {
  List<String> images =[
    "assets/icon/grid1.png",
"assets/icon/grid1.png",
    "assets/icon/Group 150.png",
        "assets/icon/Group 152.png",
    "assets/icon/Group 153.png",
    "assets/icon/Group 152 (1).png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Image.asset(
                "assets/icon/backmenu.png",
              ),
            ),
          ),
        ),
        title: Text(
          "Apply Loan",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Text("Welcome To",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
            Text("Start your first loan application with ",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

            SizedBox(
                height: 200.0,
                width: 350.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15,20, 15,0),
                  child: Carousel(
                    images: [
                     Image.asset("assets/icon/slider.png"),
                      Image.asset("assets/icon/slider.png"),
                      Image.asset("assets/icon/legal.png"),
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.pinkAccent,
                    indicatorBgPadding: 0.0,
                    borderRadius: false,
                   dotBgColor: AppColors.pink,
                   // moveIndicatorFromBottom: 180.0,
                    noRadiusForIndicator: true,
                    overlayShadow: true,
                    overlayShadowColors: Colors.pinkAccent,
                    overlayShadowSize: 0.1,
                  ),
                )
            ),
            Container(
              height: 300,
              width: 300,

              padding: EdgeInsets.all(12),
              child: GridView.builder(
                itemCount: images.length,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0

                  ),
                  itemBuilder: (BuildContext context, int index){
                    return InkWell(
                      onTap: (){

                      },
                      child: Card(

                        borderOnForeground: true,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),

                              )),
                          child
                          : Image.asset(images[index])),
                    );
                  },
              )),
            ButtonTheme(
              minWidth: 250,
              child: RaisedButton(


                color: AppColors.darkblue,
                onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Applyloan2()),
                  );
                },
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(1)),
                child: Text("Next",
                  style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
            )
          ],
        ),
      ),
    );
  }
}
class Applyloan2 extends StatefulWidget {
  const Applyloan2({Key key}) : super(key: key);

  @override
  _Applyloan2State createState() => _Applyloan2State();
}

class _Applyloan2State extends State<Applyloan2> {
  bool checkedValue = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Image.asset(
                "assets/icon/backmenu.png",
              ),
            ),
          ),
        ),
        title: Text(
          "Apply Loan",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            Text("Your Personal  Data",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
            SizedBox(height: 5,),
            Text("This data will be saved for your future applications.",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize:12),),
            SizedBox(height: 10,),
            Image.asset("assets/icon/Applyloan.png",width: 192,height: 182,),

            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Your Name",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Your Name",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Your Email",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mobile Number",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Mobile .No",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Date Of Birth",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Select the date of birth",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Location",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Regular",
                            fontSize: 12),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    decoration: InputDecoration(
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.blueGrey,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Your Location",
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.topLeft,
                child: CheckboxListTile(
                  activeColor: AppColors.checkbox,
                  title: Text(
                    "I By entering your personal details, you hereby authorize HOME XP and or its service provider’s to contact you and you agree to the terms and conditions",
                    style: TextStyle(
                        fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                  ),
                  value: checkedValue,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    });
                  },
                  controlAffinity: ListTileControlAffinity
                      .leading, //  <-- leading Checkbox
                )),
            ButtonTheme(
              minWidth: 300,
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Applyloan3()),
                  );
                },
                color: AppColors.darkblue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "RobotoCondensed-Bold"),
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}

class Applyloan3 extends StatefulWidget {
  const Applyloan3({Key key}) : super(key: key);

  @override
  _Applyloan3State createState() => _Applyloan3State();
}

class _Applyloan3State extends State<Applyloan3> {

  bool checkedValue = true;
  bool selected = true;
  int  click;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
              child: Image.asset(
                "assets/icon/backmenu.png",
              ),
            ),
          ),
        ),
        title: Text(
          "Apply Loan",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
   body: SingleChildScrollView(
     child: Padding(
       padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
       child: Container(
         alignment: Alignment.center,
         child: Column(
           children: [
             Text("Continue Application",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
             SizedBox(height: 5,),
             Text("Let’s get started with your basic information",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
             SizedBox(height: 10,),
             Image.asset("assets/icon/Group 601.png",height: 123,width: 193,),
             SizedBox(height: 10,),
             Container(
                 alignment: Alignment.topLeft,
                 child: Text("Type of employment",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),)),

             Row(
               children: [
                 Column(
                   children: [
                     ButtonTheme(
                       minWidth: 100,
                       child: RaisedButton(


                           color: click ==1  ? AppColors.pink:AppColors.grey,
                           onPressed: (){

                          setState(() {
                          click=1;
                          selected = true;
                                    });
                           },
                           shape: RoundedRectangleBorder(

                               borderRadius: BorderRadius.circular(1)),
                           child: Text("salaried",
                             style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                     ),
                   ],
                 ),


                 SizedBox(width: 10,),
                 ButtonTheme(
                   minWidth: 100,
                   child: RaisedButton(


                       color: click ==2  ? AppColors.pink:AppColors.grey,
                       onPressed: (){
                         setState(() {
                           click = 2;
                           selected=false;
                         });

                        // Navigator.push(context, MaterialPageRoute(builder: (context) => Applyloan2()),);
                       },
                       shape: RoundedRectangleBorder(

                           borderRadius: BorderRadius.circular(1)),
                       child: Text("Self Employee",
                         style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                 ),

               ],
             ),

             Container(
               child:selected==true? Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Latest Year Profit",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Latest Year Profit",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Other Income source",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Other Income source",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                     ],
                   ),


                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Company Name",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Enter Your Company Name",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Company Type",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Enter Your Company Type",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Monthly Paying EMI’s",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Select Date of Birth",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Year in Current Business",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Enter your work Exp..",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                     ],
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Approximately Property Value.",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Approximately Property Value.",
                       ),
                     ),
                   ),
                   SizedBox(height: 10,),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Requested Loan Amt",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Requested Loan Amt",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Message",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: SizedBox(
                       height: 50,width: 350,
                       child: TextFormField(

                         style: TextStyle(
                           fontSize: 10,
                         ),
                         decoration: InputDecoration(
                           isDense: true,
                           fillColor: AppColors.textfeild,
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             ),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             ),
                           ),
                           focusedErrorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: const BorderSide(color: Colors.red),
                           ),
                           hintText: "",
                         ),
                       ),
                     ),
                   ),

                   Container(
                       alignment: Alignment.topLeft,
                       child: CheckboxListTile(
                         activeColor: AppColors.checkbox,
                         title: Text(
                           "By Registering You Confirm That You Accept Terms & Conditions and Privacy Policy",
                           style: TextStyle(
                               fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                         ),
                         value: checkedValue,
                         onChanged: (newValue) {
                           setState(() {
                             checkedValue = newValue;
                           });
                         },
                         controlAffinity: ListTileControlAffinity
                             .leading, //  <-- leading Checkbox
                       )),

                   Padding(
                     padding: const EdgeInsets.all( 10),
                     child: ButtonTheme(
                       minWidth: 300,
                       child: RaisedButton(


                           color: AppColors.pink,
                           onPressed: (){


                           },
                           shape: RoundedRectangleBorder(

                               borderRadius: BorderRadius.circular(1)),
                           child: Text("SUMBIT",
                             style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                     ),
                   ),
                 ],
               ): Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Latest Year Profit",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Latest Year Profit",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Other Income source",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Other Income source",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                     ],
                   ),


                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Cny Name",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Enter Your Company Name",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Company Type",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Enter Your Company Type",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Monthly Paying EMI’s",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Select Date of Birth",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("Year in Current Business",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                             SizedBox(height: 5,),
                             SizedBox(height: 40,width: 130,
                               child: TextFormField(
                                 style: TextStyle(
                                   fontSize: 10,
                                 ),
                                 decoration: InputDecoration(
                                   isDense: true,
                                   fillColor: AppColors.textfeild,
                                   enabledBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: BorderSide(
                                       color: Colors.blueGrey,
                                     ),
                                   ),
                                   focusedErrorBorder: OutlineInputBorder(
                                     borderRadius: BorderRadius.circular(5),
                                     borderSide: const BorderSide(color: Colors.red),
                                   ),
                                   hintText: "Enter your work Exp..",
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                     ],
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Approximately Property Value.",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Approximately Property Value.",
                       ),
                     ),
                   ),
                   SizedBox(height: 10,),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Requested Loan Amt",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: TextFormField(
                       style: TextStyle(
                         fontSize: 10,
                       ),
                       decoration: InputDecoration(
                         isDense: true,
                         fillColor: AppColors.textfeild,
                         enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: BorderSide(
                             color: Colors.blueGrey,
                           ),
                         ),
                         focusedErrorBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(5),
                           borderSide: const BorderSide(color: Colors.red),
                         ),
                         hintText: "Requested Loan Amt",
                       ),
                     ),
                   ),

                   SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: Text("Message",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),
                   ),
                   SizedBox(height: 5,),
                   Padding(
                     padding: const EdgeInsets.only(left: 10,right: 10),
                     child: SizedBox(
                       height: 50,width: 350,
                       child: TextFormField(

                         style: TextStyle(
                           fontSize: 10,
                         ),
                         decoration: InputDecoration(
                           isDense: true,
                           fillColor: AppColors.textfeild,
                           enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             ),
                           ),
                           focusedBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: BorderSide(
                               color: Colors.blueGrey,
                             ),
                           ),
                           focusedErrorBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5),
                             borderSide: const BorderSide(color: Colors.red),
                           ),
                           hintText: "",
                         ),
                       ),
                     ),
                   ),

                   Container(
                       alignment: Alignment.topLeft,
                       child: CheckboxListTile(
                         activeColor: AppColors.checkbox,
                         title: Text(
                           "By Registering You Confirm That You Accept Terms & Conditions and Privacy Policy",
                           style: TextStyle(
                               fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                         ),
                         value: checkedValue,
                         onChanged: (newValue) {
                           setState(() {
                             checkedValue = newValue;
                           });
                         },
                         controlAffinity: ListTileControlAffinity
                             .leading, //  <-- leading Checkbox
                       )),

                   Padding(
                     padding: const EdgeInsets.all( 10),
                     child: ButtonTheme(
                       minWidth: 300,
                       child: RaisedButton(


                           color: AppColors.pink,
                           onPressed: (){


                           },
                           shape: RoundedRectangleBorder(

                               borderRadius: BorderRadius.circular(1)),
                           child: Text("SUMBIT",
                             style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                     ),
                   ),
                 ],
               ),
             ),


           ],
         ),
       ),
     ),
   ),
    );
  }
}
