import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: IconButton(
          icon: ImageIcon(
            AssetImage("assets/icon/menu.png"),
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          SizedBox(
            width: 60,
          ),
          Image.asset(
            "assets/icon/aapbarlogo.png",
            width: 120,
          ),
          SizedBox(width: 15),
          Expanded(
            child: InkWell(
                onTap: () {},
                child: Container(
                  height: 20,
                  child: Image.asset(
                    "assets/icon/Searchbar.png",
                  ),
                )),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(

        child: Column(
          children: [
            Container(
              color: AppColors.darkblue,
              child: Row(

                children: [
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "APPLY LOAN",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "RobotoCondensed-Regular"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "LEGAL SERVICE",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "RobotoCondensed-Regular"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "PACKAGE",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "RobotoCondensed-Regular"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/image/userimg.png'),
                  )
                ],
              ),
            )
          ],

        ),
      ),
    );
  }
}
