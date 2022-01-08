import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/user/login.dart';

import '../Appcolor.dart';
import '../dashboard.dart';

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

  bool Click = false;
  bool _hasBeenPressed = false;
var selected;
  List categories = ['Agent', 'Owner', 'Builder', ];

int clicked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: Form(
          key: _formKey,
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
                    bottom: 20,

                  ),
                  child: TextFormField(
                    controller: nameController,
                    validator: validatename,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                        BorderSide(color: Colors.pinkAccent, ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: emailController,
                    validator: validateemail,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                        BorderSide(color: Colors.pinkAccent, ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height:30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: mobileController,
                    validator: validatemobile,
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                        BorderSide(color: Colors.pinkAccent, ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Mobile",
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    right: 20,
                    left: 20,
                  ),
                  child: TextFormField(
                    controller: passwordController,
                    validator: validatepassword,
                    style: TextStyle(
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
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
                        BorderSide(color: Colors.pinkAccent, ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Password",
                    ),
                  ),
                ),
                //for text
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(top: 5, left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "PROPERTY POSTED BY",
                      style: TextStyle(
                          fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                    )),
                SizedBox(
                  height: 10,
                ),
                //button
                // of




                SizedBox(height: 10,),
                //list for button
                // Container(
                //   height: MediaQuery.of(context).size.height*0.05,
                //
                //
                //
                //
                //   child: ListView.builder(
                //
                //       scrollDirection: Axis.horizontal,
                //       shrinkWrap: true,
                //       itemCount: categories.length,
                //       itemBuilder: (context, index) {
                //         return Container(
                //           padding: EdgeInsets.only(left: 15,right: 5),
                //
                //           child: ElevatedButton(
                //
                //             style: ButtonStyle(
                //
                //
                //               backgroundColor: MaterialStateProperty.all<Color>(
                //                   selected == categories[index]
                //                       ? AppColors.pink
                //                       : AppColors.grey),
                //               shape: MaterialStateProperty.all<
                //                   RoundedRectangleBorder>(
                //                 RoundedRectangleBorder(
                //                   side: BorderSide(color: AppColors.grey),
                //                   borderRadius: BorderRadius.circular(1.0),
                //                 ),
                //               ),
                //             ),
                //             child: Text(
                //               categories[index],
                //               style: TextStyle(
                //                   fontFamily: "RobotoCondensed-Bold",
                //                   color: selected == categories[index]
                //                       ?Colors.black
                //                       : Colors.black,
                //                   fontSize: 12),
                //             ),
                //             onPressed: () {
                //               setState(() {
                //                 selected = categories[index];
                //               });
                //               // Navigator.push(
                //               //     context,
                //               //     MaterialPageRoute(
                //               //         builder: (context) => ()));
                //             },
                //           ),
                //         );
                //       }),
                //
                //
                // ),

                Container(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: RaisedButton(


                            color: clicked == 1 ? AppColors.pink : Colors.white,
                            onPressed: (){
                              setState(() {
                                clicked =1;
                              });
                            },
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(1)),
                            child: Text("Agent",
                              style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        child: RaisedButton(
                            color: clicked == 2 ? AppColors.pink : Colors.white,

                            onPressed: (){
                              setState(() {
                                clicked =2;
                              });
                            },
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(1)),
                            child: Text("Ownwe",
                              style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      ),
                      SizedBox(width: 12,),
                      Expanded(
                        child: RaisedButton(

                            color: clicked == 3 ? AppColors.pink : Colors.white,
                            onPressed: (){

                              setState(() {
                                clicked=3;
                              });
                            },
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(1)),
                            child: Text("Builder",
                              style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      ),


                    ],
                  ),

                ),











                Container(
                    alignment: Alignment.topLeft,
                    child: CheckboxListTile(
                      activeColor: AppColors.checkbox,
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
                      if (_formKey.currentState.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()),);

                      }

                    },
                    color: AppColors.pink,
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
      Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage()),);
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
    return 'Enter your Nmae';
  }
  if (value.length < 4) {
    return 'use more than 4 character';
  }
  return null;
}

String validatemobile(String value) {
  if (value.isEmpty) {
    return "Enter your Mobile";
  }
  if (value.length < 10) {
    return 'Enter valid number';
  }
  return null;
}

String validateemail(String value) {
  if (value.isEmpty) {
    return "Enter your Email-id";
  }
  Pattern pattern = "@.com";
  RegExp regex = RegExp(pattern);
  if (!regex.hasMatch(value)) {
    return 'Enter valid email-id';
  }

  return null;
}

String validatepassword(String value) {
  if (value.isEmpty) {
    return 'Enter your Password';
  }
  if (value.length < 4) {
    return 'use more than 4 character';
  }
  return null;
}
