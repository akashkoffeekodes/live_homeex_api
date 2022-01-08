import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';

class Propertydetail2 extends StatefulWidget {
  const Propertydetail2({Key key}) : super(key: key);

  @override
  _Propertydetail2State createState() => _Propertydetail2State();
}

class _Propertydetail2State extends State<Propertydetail2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Image.asset("assets/image/imgloader.png"),
              SizedBox(height: 20,),
              Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                      child: Text("What makes your property unique?",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 14),)),
                  SizedBox(height: 10,),
                  Container(
                    child: TextFormField(

                      style: TextStyle(
                        fontSize: 10,
                      ),

                      decoration: InputDecoration(
                        contentPadding: new EdgeInsets.symmetric(vertical: 35.0, horizontal: 10.0),
                        isDense: true,
                        fillColor: AppColors.textfeild,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.blueGrey,),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                          BorderSide(color: Colors.blueGrey, ),
                        ),

                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: "Share some details about your property...",
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topRight,
                      child: Text("0 / 5000 (Min. 30 characters)",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),)),
//owner ship
                  Container(alignment: Alignment.topLeft,
                      child: Text("Ownership",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                  SizedBox(height: 10,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(
                      suffixIcon: Padding(

                        padding: const EdgeInsets.all(15),
                        child: Image.asset("assets/icon/suffix.png",width: 1,height: 1,),
                      ),
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Add owner Ship",
                    ),
                  ),

                  //Expexted price
                  SizedBox(height: 10,),
                  Container(alignment: Alignment.topLeft,
                      child: Text("Expected price",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                  SizedBox(height: 10,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(
                      suffixIcon: Padding(

                        padding: const EdgeInsets.all(15),
                        child: Image.asset("assets/icon/suffix.png",width: 1,height: 1,),
                      ),
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Your expected price",
                    ),
                  ),

                  SizedBox(height: 10,),
                  Container(alignment: Alignment.topLeft,
                      child: Text("More Pricing Details",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                  SizedBox(height: 10,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(
                      suffixText: "Monthly",
                      suffixIcon: Padding(

                        padding: const EdgeInsets.all(15),
                        child: Image.asset("assets/icon/suffix.png",width: 1,height: 1,),
                      ),
                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Your maintance charge",
                    ),
                  ),

                  SizedBox(height: 15,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(


                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Enter Booking Amount",
                    ),
                  ),


                  SizedBox(height: 15,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(


                      contentPadding: new EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
                      isDense: true,
                      fillColor: AppColors.textfeild,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Membership charges",
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTheme(
                      height: 40,
                      minWidth: 400,
                      child: RaisedButton(

                          color: AppColors.darkblue,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text("Submit",
                            style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
