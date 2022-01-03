import 'package:flutter/material.dart';

import 'Appcolor.dart';

class LoanDetail extends StatefulWidget {
  const LoanDetail({Key key}) : super(key: key);

  @override
  _LoanDetailState createState() => _LoanDetailState();
}

class _LoanDetailState extends State<LoanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);


            },

            child: Image.asset(
              "assets/icon/backmenu.png",
            ),
          ),
        ),
        title: Text(
          "Loan Detail",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),

      body: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Card(
              color: AppColors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/icon/bob.png",width: 61,height: 58,),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Intrest rate:",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
                      Text("8.90%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
                    ],
                  ),
                  SizedBox(width: 40,),

                  ButtonTheme(

minWidth: 25,
                    height: 25,
                    child: RaisedButton(
                      color: AppColors.pink,
                      onPressed: () {

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 10,
                          )),
                    ),

                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Card(
              color: AppColors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/icon/bob.png",width: 61,height: 58,),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Intrest rate:",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
                      Text("8.90%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
                    ],
                  ),
                  SizedBox(width: 40,),

                  ButtonTheme(

                    minWidth: 25,
                    height: 25,
                    child: RaisedButton(
                      color: AppColors.pink,
                      onPressed: () {

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 10,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: Card(
              color: AppColors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset("assets/icon/bob.png",width: 61,height: 58,),
                  ),
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Intrest rate:",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
                      Text("8.90%",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 24),),
                    ],
                  ),
                  SizedBox(width: 40,),

                  ButtonTheme(

                    minWidth: 25,
                    height: 25,
                    child: RaisedButton(
                      color: AppColors.pink,
                      onPressed: () {

                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                          "Apply",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 10,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),


    );
  }
}
