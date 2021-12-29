import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/user/login.dart';
import 'package:home_ex/user/register.dart';

class drawerPage extends StatefulWidget {
  const drawerPage({Key key}) : super(key: key);

  @override
  _drawerPageState createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {

  var my_list = [Loginpage(), Register()];
  int selected_index = 0;

  void setIndex(int index) {
    setState(() {
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 20,
      child: Drawer(

        elevation: 5,
        child: Scaffold(
          body: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                color: AppColors.darkblue

                ),
                child: Text('Drawer Header',style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15,color: Colors.white),),
              ),
              ListTile(
                title: Text('Click For Login'),
                onTap: () {
                  setIndex(0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginpage()),
                  );
                },
              ),
              ListTile(
                title: Text('Click For Register'),
                onTap: () {
                  setIndex(1);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
