import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Appcolor.dart';

class Salerent extends StatefulWidget {
  const Salerent({Key key}) : super(key: key);

  @override
  _SalerentState createState() => _SalerentState();
}

class _SalerentState extends State<Salerent> {
  int _value;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            alignment: Alignment.center,
            child: Column(

              children: [
                Text("Sell or Rent your Property", style: TextStyle(
                    fontFamily: "RobotoCondensed-Bold", fontSize: 24),
                ),
                Text("This data will be saved for your future applications",
                  style: TextStyle(
                      fontFamily: "RobotoCondensed-Regular", fontSize: 12),
                ),
                SizedBox(height: 20,),
                Image.asset(
                  "assets/image/sellor rent.png", height: 214, width: 329,),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text("Selected package", style: TextStyle(
                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 35,
                  width: 300,
                  child: DropdownButton(
                      isDense: true,

                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Sliver", style: TextStyle(fontSize: 12,
                              fontFamily: "RobotoCondensed-Bold"),),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Gold"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                          child: Text("Diomand"),
                          value: 3,
                        )
                      ],

                      onChanged: (int value) {
                        setState(() {
                          _value = value;
                        });
                      },
                      hint: Text("Select item")
                  ),
                ),
                SizedBox(height: 10,),

                Container(
                padding: EdgeInsets.only(left: 20,right: 20),
                                child: Row(
                  children: [

                    Expanded(
                      child: RaisedButton(

                          color: AppColors.pink,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                    ),
                    Expanded(
                      child: RaisedButton(

                          color: Colors.white,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12,),)),
                    ),
                    Expanded(
                      child: RaisedButton(

                          color: Colors.white,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                    ),
                    Expanded(
                      child: RaisedButton(

                          color: Colors.white,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                    ),

                  ],
                ),),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  alignment: Alignment.topLeft,
                  child: Text("Posted By", style: TextStyle(
                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Row(
                    children: [
                      RaisedButton(


                        color: AppColors.pink,
                        onPressed: (){},
                        shape: RoundedRectangleBorder(

                            borderRadius: BorderRadius.circular(1)),
                        child: Text("sale",
                          style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      SizedBox(width: 12,),
                      RaisedButton(

                          color: Colors.white,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      SizedBox(width: 12,),
                      RaisedButton(

                          color: Colors.white,
                          onPressed: (){},
                          shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(1)),
                          child: Text("sale",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),


                    ],
                  ),),


                SizedBox(height: 15,),
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  alignment: Alignment.topRight,
                  child: Column(
                    

                    children: [
                      Text("Locality / Project / Landmark", style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                      SizedBox(height: 10,),
                      TextFormField(

                        style: TextStyle(
                          fontSize: 10,
                        ),

                        decoration: InputDecoration(
                          suffixIcon: Image.asset("assets/icon/SSearch.png",height: 10,width: 10,),
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

                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

    );
  }


}

