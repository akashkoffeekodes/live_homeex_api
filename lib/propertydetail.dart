import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';

class Propertydetail extends StatefulWidget {
  const Propertydetail({Key key}) : super(key: key);
  @override
  _PropertydetailState createState() => _PropertydetailState();
}

class _PropertydetailState extends State<Propertydetail> {
  bool checkedValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Property Detail", style: TextStyle(fontFamily: "RobotoCondensed-Regular,",fontSize: 15),),
        backgroundColor: AppColors.darkblue,
      leading: IconButton(
        icon: Container(
         height: 20,
          margin: EdgeInsets.only(right: 20),
          child: ImageIcon(
            AssetImage("assets/icon/backmenu.png",),
            color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
        actions: <Widget>[
          Image.asset("assets/icon/like.png",width: 50,),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset("assets/image/detail.png",),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,top: 10),
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

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20,left: 20),
                    child: Image.asset("assets/icon/paisa.png",height: 32,width: 32,),
                  ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18,left: 10),
                            child: Text("85,00,000 L",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 18),),
                          )
                ],
              ),

            ),
            SizedBox(height: 15,),
            Container(
              alignment: Alignment.topLeft,
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Image.asset("assets/icon/location.png",height: 22,width: 22.86,),
                  ),

                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 & 3 BHK Asha Residential Apartment",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                      Text("Canal Road, Vesu, Surat ",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),

                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 15,left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("About Property",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 14),),
                    SizedBox(height: 10,),
                    Text("An affordable 2 BHK for sale in Prathmesh Tower is now available, "
                        "without any brokerage. This DK facing home is on the 7th floor. Spread over 900 sqft."
                        " this home is an ideal place to live in. such amenities, living here.               ...See More",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
                      SizedBox(height: 15,),
                      Image.asset("assets/image/divider.png",width: 414,)


                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.topLeft,
              child: Column(

                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Proerty Features",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 14),),
                  ),
                ],
              ),
            ),

           SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/carpetarea.png",height: 16,width: 16,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Carpat Area",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("2410 sqFt",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),
                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/floor.png",height: 16,width: 16,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Floor  ",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("1/10",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),
                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/HBD.png",height: 19,width: 19,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Age",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("5 year",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                )



              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/maintain.png",height: 16,width: 16,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Maintenance",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("₹ 6000/ Month",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),
                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/faces.png",height: 16,width: 16,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Faces  ",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("East",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),
                Container(
                  decoration: BoxDecoration(

                      border: Border.all(color: Colors.grey)
                  ),width: 100,height: 40,

                  child: Row(

                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10  ),
                        child: Image.asset("assets/icon/furnicher.png",height: 19,width: 19,),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text("Furniture",style: TextStyle(fontFamily: 'RobotoCondensed-Regular',fontSize:10 ),),
                            Text("Unfurnished",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize:10 ),),
                          ],
                        ),
                      ),

                    ],
                  ),

                )



              ],
            ),
            SizedBox(height: 30,),
            Image.asset("assets/image/divider.png",width: 414,),


            SizedBox(
              height: 10,
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
                      child: Image.asset("assets/icon/Bhome.png",height: 44,width: 44,),
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
                      child: Image.asset("assets/icon/Bcar.png",height: 44,width: 44,),
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
                      child: Image.asset("assets/icon/Bkid.png",height: 44,width: 44,),
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
                      child: Image.asset("assets/icon/Bgarden.png",height: 44,width: 44,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("Garden",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                    )
                  ],
                ),



              ],
            ),

            Row(

              children: [
                Column(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 5,left: 25),
                      child: Image.asset("assets/icon/Vgym.png",height: 44,width: 44,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10,left: 25,),
                      child: Text("Gym",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                    )
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                      child: Image.asset("assets/icon/Bmodular.png",height: 44,width: 44,),
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
                      child: Image.asset("assets/icon/Bjogges.png",height: 44,width: 44,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("Jogges",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                    )
                  ],
                ),
                SizedBox(width: 35,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 5),
                      child: Image.asset("assets/icon/Baircon.png",height: 44,width: 44,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text("Air Condition",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),),
                    )
                  ],
                ),



              ],
            ),
            SizedBox(height: 10,),
            Image.asset("assets/image/divider.png",width: 414,),
//text Amenities
            SizedBox(height: 15,),
            Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore Locality",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "VIP Road, next to Nandini 3 Vesu,",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular", fontSize: 10),
                    ),
                    Text(
                      " Surat, Gujarat 395007",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular", fontSize: 10),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset("assets/image/map.png",height: 75.66,width: 372,),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                        width: 320.0,
                        height:35,
                      child: RaisedButton(color: AppColors.pink,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text("  Request to Brochure ",
                            style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),

                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        RaisedButton(color: AppColors.darkblue,
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text("       Loan Detail        ",
                              style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
                        SizedBox(width: 10,),
                        RaisedButton(color: AppColors.darkblue,
                            onPressed: (){},
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text("          contact          ",
                              style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),

                      ],
                    )
                    ],
                ),

            ),
            SizedBox(height: 10,),
            Image.asset("assets/image/divider.png",width: 414,),


            SizedBox(
              height: 10,
            ),
            //text Amenities
            Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Want to contact us",
                  style: TextStyle(
                      fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                )),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15),),
                  SizedBox(height: 5,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

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
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Name",
                    ),
                  ),


                  SizedBox(height: 10,),
                  Text("Email",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15),),
                  SizedBox(height: 5,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

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
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Email",
                    ),
                  ),


                  SizedBox(height: 10,),
                  Text("Mobile",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15),),
                  SizedBox(height: 5,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

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
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Mobile",
                    ),
                  ),


                  SizedBox(height: 10,),
                  Text("Massage",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15),),
                  SizedBox(height: 5,),
                  TextFormField(

                    style: TextStyle(
                      fontSize: 10,
                    ),

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
                        BorderSide(color: Colors.blueGrey, ),
                      ),

                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      hintText: "Massage",
                    ),
                  ),


                  CheckboxListTile(
                    activeColor: AppColors.checkbox,
                    checkColor: Colors.white,

                    title: Text(
                      "I agree to Homexp T&C",
                      style: TextStyle(fontSize: 10,fontFamily: "RobotoCondensed-Regular"),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  ),

                  SizedBox(height: 10,),
                  SizedBox(
                    width: 320.0,
                    height:35,
                    child: RaisedButton(color: AppColors.darkblue,
                        onPressed: (){},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("  REEQUEST TO CALLBACK ",
                          style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),

                  ),

                  SizedBox(height: 10,),
                  Image.asset("assets/image/divider.png",width: 414,),


                  SizedBox(height: 10,),
                  Container(
                      padding: EdgeInsets.only(left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Similar Properties",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 15),
                      )),
                  
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Image.asset("assets/image/similarpro.png",height:252 ,width:307 ,),
                            SizedBox(height: 5,),
                            Row(

                                      children: [
                                Image.asset("assets/icon/location.png",height: 22,width: 22,),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text("1 & 2 BHK Radha Residential",   style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold", fontSize: 15),),
                                    Text("Canal Road, Bhatar, Surat",   style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold", fontSize: 15),),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Image.asset("assets/image/similarpro.png",height:252 ,width:307 ,),
                            SizedBox(height: 5,),
                            Row(

                              children: [
                                Image.asset("assets/icon/location.png",height: 22,width: 22,),
                                SizedBox(width: 10,),
                                Column(
                                  children: [
                                    Text("1 & 2 BHK Radha Residential",   style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold", fontSize: 15),),
                                    Text("Canal Road, Bhatar, Surat",   style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold", fontSize: 15),),
                                  ],
                                ),

                              ],
                            ),

                          ],
                        ),
                      ],

                    ),
                  ),



                ],

              ),
            )





          ],
        ),
      ),
    );
  }
}
