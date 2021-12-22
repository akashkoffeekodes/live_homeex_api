import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Appcolor.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

final _formKey = GlobalKey<FormState>();
final key = GlobalKey<FormState>();

class _RegisterState extends State<Register> {
  bool checkedValue = true;
  TextEditingController nameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController mobileController = new TextEditingController();

  bool click = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Form(
          key: key,
          child: Container(

            child: Column(

              children: [
                //for icon
                Container(
                  padding: EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/image/darklogo.png",
                    width: 140,
                    height: 140,
                  ),
                ),
                //for Text form feild
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                    top: 20,
                  ),
                  child: TextFormField(
                    controller: nameController,
                    validator: validateemail,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 1.0),
                      ),
                      hintText: "Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    validator: validatename,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 1.0),
                      ),
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    validator: validatemobile,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 1.0),
                      ),
                      hintText: "Mobile",
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: mobileController,
                    validator: validatepassword,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.blueGrey, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.pinkAccent, width: 1.0),
                      ),
                      hintText: "Password",
                    ),
                  ),
                ),
                //for text
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.only(top: 10, left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "PROPERTY POSTED BY",
                      style: TextStyle(
                          fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                    )),
                SizedBox(
                  height: 10,
                ),
                //button of
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: (click == true)?  AppColors.pink : AppColors.grey,
                      onPressed: () {
                        setState(() {
                          click = false;

                        });

                      },

                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                      child: Text("Agent"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      color: (click == false)? AppColors.grey : AppColors.pink   ,

                      onPressed: () {
                        setState(() {
                          click = true;
                        });

                      },
                      //color: AppColors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Owner"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    RaisedButton(
                      color: (click == true)?  AppColors.grey : AppColors.pink,
                      onPressed: () {
                        setState(() {
                          click = false;
                        });

                      },
                     // color: AppColors.pink,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text("Builder"),
                    ),
                  ],
                ),
                Container(
                    alignment: Alignment.topLeft,
                    child: CheckboxListTile(
                      activeColor: Colors.grey,
                      title: Text(
                        "I agree to be contacted by HOME_XP and others for similar properties or related services view By Continuing I agree to Terms and Conditions",
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

//Register button
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(right: 40, left: 40),
                  child: RaisedButton(
                    onPressed: () {
                      if (key.currentState.validate()) ;
                    },
                    color: AppColors.darkblue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Register",style: TextStyle(
                      color: Colors.white,fontFamily: "RobotoCondensed-Regular"
                    ),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login(context) async {
    if (_formKey.currentState.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Processing Data')),
      );
    }
  }


  }



String validatename(String value) {
  if (value.isEmpty) {
    return 'enter your password';
  }
  if (value.length < 4) {
    return 'use more than 4 character';
  }
  return null;
}

String validatemobile(String value) {
  if (value.isEmpty) {
    return "Enter your email-id";
  }
  Pattern pattern = "0123456789";
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Enter valid email-id';
  }

  return null;
}

String validateemail(String value) {
  if (value.isEmpty) {
    return "Enter your email-id";
  }
  Pattern pattern = "@";
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Enter valid email-id';
  }

  return null;
}

String validatepassword(String value) {
  if (value.isEmpty) {
    return 'enter your password';
  }
  if (value.length < 4) {
    return 'use more than 4 character';
  }
  return null;
}
