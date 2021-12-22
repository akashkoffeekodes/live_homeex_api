import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/resetpass.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({Key key}) : super(key: key);

  @override
  _ForgetpassState createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              "Forgot Password?",
              style: TextStyle(
                  fontFamily: "RobotoCondensed-Bold,",
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Enter your register Mobile Number ",
              style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular,", fontSize: 10),
            ),
            Text(
              "to get new password link.",
              style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular,", fontSize: 10),
            ),
            SizedBox(
              height: 50,
            ),
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
                    hintText: "Type in your text",
                    fillColor: AppColors.grey),
              ),
            ),
            SizedBox(height: 150,),
            Text(
              "Back to login screen",
              style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular,", fontSize: 12),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(right: 20, left: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resetpass ()),
                  );
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
    );
  }
}
