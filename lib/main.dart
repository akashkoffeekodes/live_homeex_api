import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/login.dart';
import 'package:home_ex/register.dart';
import 'package:home_ex/resetpass.dart';
import 'package:home_ex/splash.dart';
import 'List.dart';
import 'dashboard.dart';
import 'forgetpassword.dart';
import 'homepage.dart';
import 'onboard.dart';

void main(){
  runApp(Home_ex());
}
class Home_ex extends StatelessWidget {
  const Home_ex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home:DashBoard(),
    );
  }
}
