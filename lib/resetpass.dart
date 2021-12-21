import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';

class Resetpass extends StatefulWidget {
  const Resetpass({Key key}) : super(key: key);

  @override
  _ResetpassState createState() => _ResetpassState();
}

class _ResetpassState extends State<Resetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 50),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/image/lock.png",
                    height: 110,
                    width: 110,
                  )),
              SizedBox(
                height: 30,
              ),
              Text(
                "Reset Your New Password",
                style: TextStyle(
                    fontFamily: "RobotoCondensed-Bold,",
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),

              SizedBox(
                height: 50,
              ),
              //TextFeild
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      hintText: "Password",
                      fillColor: AppColors.grey),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 20, left: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(
                        color: Colors.black54,
                      ),
                      hintText: "Retype Password",
                      fillColor: AppColors.grey),
                ),
              ),


              Container(
                padding: EdgeInsets.only(right: 20,left: 20,top: 20),
                child: Text(
                  "Minimum 10  characters. Must contain upper and lowercase, numbers, and symbols",
                  style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular,", fontSize: 12),
                ),
              ),
              SizedBox(height: 120,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 20, left: 20),
                child: RaisedButton(
                  onPressed: () {
                  },
                  color: AppColors.darkblue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

