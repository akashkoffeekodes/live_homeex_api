import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/user/login.dart';
import 'package:home_ex/user/register.dart';
import 'package:home_ex/user/resetpass.dart';
import 'package:home_ex/user/splash.dart';
import 'List.dart';
import 'alert.dart';
import 'dashboard.dart';
import 'filter.dart';
import 'profile.dart';
import 'user/forgetpassword.dart';
import 'homepage.dart';
import 'onboard.dart';
import 'propertydetail.dart';
import 'propertydetail2.dart';
import 'salerent.dart';

void main(){
  runApp(Home_ex());
}
class Home_ex extends StatelessWidget {
  const Home_ex({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: Filter(),
    );
  }
}
