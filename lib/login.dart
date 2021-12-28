import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/dashboard.dart';
import 'package:home_ex/forgetpassword.dart';
import 'package:home_ex/register.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

final _formKey = GlobalKey<FormState>();
final key = GlobalKey<FormState>();

class _LoginpageState extends State<Loginpage> {
  bool checkedValue = true;

  TextEditingController emailController = new TextEditingController();

  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/image/darklogo.png",
                  width: 150,
                  height: 150,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                  top: 20,
                ),
                height: 100,
                child: TextFormField(
                  controller: emailController,
                  validator: validateEmail,
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
                          BorderSide(color: Colors.pinkAccent,),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    hintText: "phone no/Email/username",
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 20,
                ),
                child: TextFormField(
                  controller: passwordController,
                  validator: validatePassword,
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
                    hintText: "password",
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: CheckboxListTile(
                    activeColor: AppColors.checkbox,
                    checkColor: Colors.white,

                    title: Text(
                      "Remember me",
                      style: TextStyle(fontSize: 10),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  )
              ),
              SizedBox(
                height: 10,
              ),
              
              Container(
                
                child:
                InkWell(onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgetpass()),
                  );
                },
                  child: Text(
                    "Forget password",
                    style: TextStyle(
                        fontSize: 10, fontFamily: "RobotoCondensed-Bold"),

                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 40, left: 40),
                child: RaisedButton(
                  onPressed: () {
                    if (key.currentState.validate()) ;
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => DashBoard()),);
                  },
                  color: AppColors.pink,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text("Login",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 40, right: 40),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  color: AppColors.darkblue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Register with us",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ],
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

String validateEmail(String value) {
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

String validatePassword(String value) {
  if (value.isEmpty) {
    return 'enter your password';
  }
  if (value.length < 4) {
    return 'use more than 4 character';
  }
  return null;
}
