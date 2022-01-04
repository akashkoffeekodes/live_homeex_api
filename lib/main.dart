import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/user/login.dart';
import 'package:home_ex/user/register.dart';
import 'package:home_ex/user/resetpass.dart';
import 'package:home_ex/user/splash.dart';
import 'List.dart';
import 'alert.dart';
import 'appliedservices.dart';
import 'applyloan.dart';
import 'drawer/balance.dart';
import 'dashboard.dart';
import 'drawer/emicalculator.dart';
import 'filter.dart';
import 'drawer/legalservice.dart';
import 'loandetail.dart';
import 'drawer/loaneligibi.dart';
import 'user/profile.dart';
import 'drawer/stepper.dart';
import 'drawer/drawerPage.dart';
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
    home:  Splash(),
    );
  }
}
