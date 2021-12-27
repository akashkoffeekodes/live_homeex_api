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
      body: SingleChildScrollView(
        child: Column(
          children: [

            Column(
              children: [


                //text box of top
                Container(
                  color: AppColors.darkblue,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      ButtonTheme(height: 30,
                        child:RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "APPLY LOAN",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "RobotoCondensed-Regular"),
                        ),
                      ), ),

                      SizedBox(
                        width: 15,
                      ),
                      ButtonTheme(height: 30,
                        child: RaisedButton(
                        onPressed: () {},
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "LEGAL SERVICE",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "RobotoCondensed-Regular"),
                        ),
                      ),),
                      SizedBox(
                        width: 15,
                      ),
                     ButtonTheme(height: 30,
                       child:  RaisedButton(
                       onPressed: () {},
                       color: Colors.white,
                       shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5)),
                       child: Text(
                         "PACKAGE",
                         style: TextStyle(
                             color: Colors.black,
                             fontFamily: "RobotoCondensed-Regular"),
                       ),
                     ),)
                    ],
                  ),
                ),

                SizedBox(
                  height: 8,
                ),


                Container(
                  padding: EdgeInsets.only(left: 17),
                  //for user block
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/image/userimg.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Text(
                              "Smart Homes",
                              style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Posted on 23rd Apr, 2021",
                              style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 150, bottom: 15),
                          child: Image.asset(
                            "assets/icon/usermenu.png",
                            height: 20,
                            width: 10,
                          )),
                      Container()
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      "2 & 3 BHK Asha Residential Apartment ",
                      style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                        fontSize: 15,
                      ),
                    )),

                Container(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      "Canal Road, Vesu, Surat ",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular",
                          fontSize: 10,
                          color: Colors.grey),
                    )),

                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/image/homepageimg.png"),
                SizedBox(
                  height: 10,
                ),
                // below imae
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 7, left: 15, top: 10, bottom: 10),
                      child: Image.asset(
                        "assets/icon/carpetarea.png",
                        height: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Carpet Area",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                        Text(
                          "2410 sq.ft",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 11,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 40),
                      child: Image.asset(
                        "assets/icon/floor.png",
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          "Floor",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                        Text(
                          "1/1o",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 11,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, bottom: 10, left: 40),
                      child: Image.asset(
                        "assets/icon/paisa.png",
                        height: 22,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          "85,00,000 L",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //text Amenities
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Amenities",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                    )),

                Row(

                  children: [
                    Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 25),
                          child: Image.asset("assets/icon/home.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,left: 25,),
                          child: Text("Smart Home",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/care.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Parking",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/kidsplayarea.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Kids Play Area",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/gatden.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Smart Home",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),



                  ],
                ),
                SizedBox(height: 10,),
                Row(

                  children: [
                    Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 25),
                          child: Image.asset("assets/icon/airconditon.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,left: 25,),
                          child: Text("Air Condtion",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/gym.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("GYM",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/home.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Modular Kitchen",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/jogging.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Jogging Track",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),



                  ],
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Loan Details",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                    )),
                Column(
                  children: [
                    Row(
                      children: [


                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),

                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(padding: EdgeInsets.only(left: 20),
                          child: RaisedButton(color: AppColors.darkblue,
                          onPressed: (){},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text("      Loan Detail      ",
                            style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                        ),
                        SizedBox(width: 20,),
                        Container(padding: EdgeInsets.only(left: 20),
                          child: RaisedButton(color: AppColors.darkblue,
                              onPressed: (){},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text("      Loan Detail      ",
                                style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),


              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/image/add.png",)),
            SizedBox(height: 10,),
            Column(
              children: [


                Container(
                  padding: EdgeInsets.only(left: 17),
                  //for user block
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/image/userimg.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Text(
                              "Smart Homes",
                              style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Posted on 23rd Apr, 2021",
                              style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(left: 150, bottom: 15),
                          child: Image.asset(
                            "assets/icon/usermenu.png",
                            height: 20,
                            width: 10,
                          )),
                      Container()
                    ],
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                    padding: EdgeInsets.only(right: 80),
                    child: Text(
                      "2 & 3 BHK Asha Residential Apartment ",
                      style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold",
                        fontSize: 15,
                      ),
                    )),

                Container(
                    padding: EdgeInsets.only(right: 200),
                    child: Text(
                      "Canal Road, Vesu, Surat ",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular",
                          fontSize: 10,
                          color: Colors.grey),
                    )),

                SizedBox(
                  height: 10,
                ),
                Image.asset("assets/image/homepageimg.png"),
                SizedBox(
                  height: 10,
                ),
                // below imae
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 7, left: 15, top: 10, bottom: 10),
                      child: Image.asset(
                        "assets/icon/carpetarea.png",
                        height: 20,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "Carpet Area",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                        Text(
                          "2410 sq.ft",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 11,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10, bottom: 10, left: 40),
                      child: Image.asset(
                        "assets/icon/floor.png",
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          "Floor",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 8,
                              color: Colors.black54),
                        ),
                        Text(
                          "1/1o",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 11,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(top: 10, bottom: 10, left: 40),
                      child: Image.asset(
                        "assets/icon/paisa.png",
                        height: 22,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        Text(
                          "85,00,000 L",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 12,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                //text Amenities
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Amenities",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                    )),

                Row(

                  children: [
                    Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 25),
                          child: Image.asset("assets/icon/home.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,left: 25,),
                          child: Text("Smart Home",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/care.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Parking",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/kidsplayarea.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Kids Play Area",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/gatden.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Smart Home",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),



                  ],
                ),
                SizedBox(height: 10,),
                Row(

                  children: [
                    Column(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5,left: 25),
                          child: Image.asset("assets/icon/airconditon.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10,left: 25,),
                          child: Text("Air Condtion",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/gym.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("GYM",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/home.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Modular Kitchen",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),
                    SizedBox(width: 35,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,bottom: 5),
                          child: Image.asset("assets/icon/jogging.png",height: 20,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text("Jogging Track",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                        )
                      ],
                    ),



                  ],
                ),
                Container(
                    padding: EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Loan Details",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                    )),
                Column(
                  children: [
                    Row(
                      children: [


                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),

                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 80,
                          padding: EdgeInsets.all(10),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            elevation: 10,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10,left: 10),
                                  child: Image.asset("assets/icon/card.png",height: 15,),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text("Loan amount on property value",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8),),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5,left: 10),
                                      child: Text("₹. 80,00,000",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                                    ),
                                  ],
                                )
                              ],


                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(padding: EdgeInsets.only(left: 20),
                          child: RaisedButton(color: AppColors.darkblue,
                              onPressed: (){},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text("      Loan Detail      ",
                                style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                        ),
                        SizedBox(width: 20,),
                        Container(padding: EdgeInsets.only(left: 20),
                          child: RaisedButton(color: AppColors.darkblue,
                              onPressed: (){},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text("      Loan Detail      ",
                                style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                        ),

                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),


              ],
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/image/add.png",)),

          ],
        ),

      ),

    );
  }
}
