import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Appcolor.dart';
import 'propertydetail2.dart';

class Salerent extends StatefulWidget {

  const Salerent({Key key}) : super(key: key);


  @override

  _SalerentState createState() => _SalerentState();
}

class _SalerentState extends State<Salerent> {
  int _value;
  bool checkedValue = true;
  var selected;
  List categories = ['Sale', 'Rent', 'Farmhouse','Auction' ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                    decoration: BoxDecoration(
                          border: Border.all(width: 0.1,color: Colors.grey)
                    ),
                    height: 45,
                    width: 300,
                    child: DropdownButtonFormField(
                        isDense: true,

                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text("Sliver",
                              style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Gold",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text("Diomand",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
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
                  padding: EdgeInsets.only(left: 30),
                                  child: Row(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        height: MediaQuery.of(context).size.height*0.05,

                        child: ListView.builder(

                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return Container(
                               

                                child: ElevatedButton(

                                  style: ButtonStyle(


                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        selected == categories[index]
                                            ? AppColors.pink
                                            : Colors.white),

                                  ),
                                  child: Text(
                                    categories[index],
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        color: selected == categories[index]
                                            ?AppColors.grey
                                            : Colors.grey,
                                        fontSize: 12),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      selected = categories[index];
                                    });
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) => ()));
                                  },
                                ),
                              );
                            }),


                      ),


                      //
                      // Expanded(
                      //   child: RaisedButton(
                      //
                      //       color: AppColors.pink,
                      //       onPressed: (){},
                      //       shape: RoundedRectangleBorder(
                      //
                      //           borderRadius: BorderRadius.circular(1)),
                      //       child: Text("sale",
                      //         style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      // ),
                      // Expanded(
                      //   child: RaisedButton(
                      //
                      //       color: Colors.white,
                      //       onPressed: (){},
                      //       shape: RoundedRectangleBorder(
                      //
                      //           borderRadius: BorderRadius.circular(1)),
                      //       child: Text("Rent",
                      //         style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12,),)),
                      // ),
                      // Expanded(
                      //   child: RaisedButton(
                      //
                      //       color: Colors.white,
                      //       onPressed: (){},
                      //       shape: RoundedRectangleBorder(
                      //
                      //           borderRadius: BorderRadius.circular(1)),
                      //       child: Text("Farmhous",
                      //         style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      // ),
                      // Expanded(
                      //   child: RaisedButton(
                      //
                      //       color: Colors.white,
                      //       onPressed: (){},
                      //       shape: RoundedRectangleBorder(
                      //
                      //           borderRadius: BorderRadius.circular(1)),
                      //       child: Text("Auction",
                      //         style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                      // ),

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
                          child: Text("Agent",
                            style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                        SizedBox(width: 12,),
                        RaisedButton(

                            color: Colors.white,
                            onPressed: (){},
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(1)),
                            child: Text("Ownwe",
                              style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
                        SizedBox(width: 12,),
                        RaisedButton(

                            color: Colors.white,
                            onPressed: (){},
                            shape: RoundedRectangleBorder(

                                borderRadius: BorderRadius.circular(1)),
                            child: Text("Builder",
                              style: TextStyle(color: Colors.grey,fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),


                      ],
                    ),

                  ),


                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.only(right: 20, left: 20),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

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

                            hintText: "Where....?",
                          ),
                        ),


                        SizedBox(height: 10,),
                        Text("Property type", style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                        ),
                                        //dropdown for property
                        Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 0.1,color: Colors.grey)
                          ),

                          child: DropdownButtonFormField(
                               isDense: true,

                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Sliver", style: TextStyle(fontSize: 12,
                                      fontFamily: "RobotoCondensed-Bold"),),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Gold",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text("Diomand",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
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
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bedroom", style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)
                                          ),
                                        ),
                                      ),

                                      Container(alignment: Alignment.center,
                                        padding: EdgeInsets.all(10),
                                          child: Text("0")),
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Balcony", style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)
                                          ),
                                        ),
                                      ),

                                      Container(alignment: Alignment.center,
                                          padding: EdgeInsets.all(10),
                                          child: Text("0")),
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),



                                ],
                              ),
                              SizedBox(width: 50,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Bathroom", style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)
                                          ),
                                        ),
                                      ),

                                      Container(alignment: Alignment.center,
                                          padding: EdgeInsets.all(10),
                                          child: Text("0")),
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text("Floor No.", style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                                  ),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)
                                          ),
                                        ),
                                      ),

                                      Container(alignment: Alignment.center,
                                          padding: EdgeInsets.all(10),
                                          child: Text("0")),
                                      Container(
                                        height: 40,width: 40,
                                        child: RaisedButton.icon(
                                          color: AppColors.pink,
                                          onPressed: () {},
                                          label: Text(''),
                                          icon:  Expanded(
                                              child: Icon(Icons.add,color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10,),
                        Text("Super Area", style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                        ),

                                      //TextFeilg with dropdown

                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(

                              child: TextFormField(

                                style: TextStyle(
                                  fontSize: 10,
                                ),

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                                  hintText: "Carpet area",
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 0.1,color: Colors.grey)

                              ),

                              height: 50,
                              width: 100,
                              child: DropdownButtonFormField(

                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("sqft", style: TextStyle(fontSize: 12,
                                          fontFamily: "RobotoCondensed-Bold"),),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("inch",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("sqft",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 3,
                                    )
                                  ],

                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Text("Sqft")
                              ),
                            ),
                          ],

                        ),


                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(

                              child: TextFormField(

                                style: TextStyle(
                                  fontSize: 10,
                                ),

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                                  hintText: "Builder Area",
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 0.1,color: Colors.grey)

                              ),

                              height: 50,
                              width: 100,
                              child: DropdownButtonFormField(

                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("sqft", style: TextStyle(fontSize: 12,
                                          fontFamily: "RobotoCondensed-Bold"),),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("inch",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("sqft",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 3,
                                    )
                                  ],

                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Text("Sqft")
                              ),
                            ),
                          ],

                        ),


                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Expanded(

                              child: TextFormField(

                                style: TextStyle(
                                  fontSize: 10,
                                ),

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                                  hintText: "Super Builder Area",
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 0.1,color: Colors.grey)

                              ),

                              height: 50,
                              width: 100,
                              child: DropdownButtonFormField(

                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("sqft", style: TextStyle(fontSize: 12,
                                          fontFamily: "RobotoCondensed-Bold"),),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("inch",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("sqft",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                      value: 3,
                                    )
                                  ],

                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Text("Sqft")
                              ),
                            ),
                          ],

                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                    alignment: Alignment.topLeft,
                    child: Text("Availability", style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                    ),
                  ),
                  Row(

                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(top:8 ,bottom:8 ,right:8 ,left:20 ),
                        child: TextFormField(

                          style: TextStyle(
                            fontSize: 10,
                          ),

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                            hintText: "Under Constraction",
                          ),
                        ),
                      ),),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(top:8 ,bottom:8 ,right:20 ,left:10 ),
                        child: TextFormField(

                          style: TextStyle(
                            fontSize: 10,
                          ),

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                            hintText: "Ready to Move",
                          ),
                        ),
                      ),)
                    ],
                  ),
////Furnishing status
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                    alignment: Alignment.topLeft,
                    child: Text("Furnishing status", style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                    ),
                  ),

                  Row(

                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextFormField(

                          style: TextStyle(
                            fontSize: 10,
                          ),

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                            hintText: "Semi Furnishing",
                          ),
                        ),
                      ),),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(

                          style: TextStyle(
                            fontSize: 10,
                          ),

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                            hintText: "Unfurnishing ",
                          ),
                        ),
                      ),),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: TextFormField(

                          style: TextStyle(
                            fontSize: 10,
                          ),

                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
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


                            hintText: "Full Furnishing ",
                          ),
                        ),
                      ),),
                    ],
                  ),

////faceing
                    Row(

                    children: [

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,top: 10,right: 10,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: [

                              Text("Age Of Constraction", style: TextStyle(
                                  fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                              ),
                              SizedBox(height: 10,),

                              Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 0.1,color: Colors.grey)
                                ),
                                child: DropdownButtonFormField(
                                    isDense: true,

                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("north",
                                          style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
                                        ),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("west",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("east",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                        value: 3,
                                      )
                                    ],

                                    onChanged: (int value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    hint: Text("Addface")
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10,right: 20,bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("Facing", style: TextStyle(
                                  fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 0.1,color: Colors.grey)
                                ),
                                child: DropdownButtonFormField(
                                    isDense: true,

                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("east",
                                          style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
                                        ),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("ewst",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("south",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                                        value: 3,
                                      )
                                    ],

                                    onChanged: (int value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    hint: Text("Face")
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                    alignment: Alignment.topLeft,
                    child: Text("Reserved parking", style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("No. Open Parking", style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold", fontSize: 8),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,width: 40,
                                  child: RaisedButton.icon(
                                    color: AppColors.pink,
                                    onPressed: () {},
                                    label: Text(''),
                                    icon:  Expanded(
                                        child: Icon(Icons.add,color: Colors.white)
                                    ),








                                  ),
                                ),

                                Container(alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    child: Text("0")),
                                Container(
                                  height: 40,width: 40,
                                  child: RaisedButton.icon(
                                    color: AppColors.pink,
                                    onPressed: () {},
                                    label: Text(''),
                                    icon:  Expanded(
                                        child: Icon(Icons.add,color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Padding(
                        padding: const EdgeInsets.only(right: 20,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("No. Covered Parking", style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold", fontSize: 8),
                            ),

                            //Reserve partking
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,width: 40,
                                  child: RaisedButton.icon(
                                    color: AppColors.pink,
                                    onPressed: () {},
                                    label: Text(''),
                                    icon:  Expanded(
                                        child: Icon(Icons.add,color: Colors.white)
                                    ),
                                  ),
                                ),

                                Container(alignment: Alignment.center,
                                    padding: EdgeInsets.all(10),
                                    child: Text("0")),
                                Container(
                                  height: 40,width: 40,
                                  child: RaisedButton.icon(
                                    color: AppColors.pink,
                                    onPressed: () {},
                                    label: Text(''),
                                    icon:  Expanded(
                                        child: Icon(Icons.add,color: Colors.white)),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                      ],
                  ),

                  Container(
                    padding: EdgeInsets.only(top: 10,left: 20,bottom: 10),
                    alignment: Alignment.topLeft,
                    child: Text("Amenities", style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFormField(

                      style: TextStyle(
                        fontSize: 10,
                      ),

                      decoration: InputDecoration(
                        suffixIcon: Container(
                            height: 9,
                            width: 7,
                            child: Image.asset("assets/icon/SSearch.png")),
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

                        hintText: "Smart home",
                      ),
                    ),
                  ),



                  SizedBox(height: 10,),
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
                            child: Image.asset("assets/icon/Gcar.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Gkids.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Ggarden.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Ggym.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Gmodular.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Gjogger.png",height: 44,width: 44,),
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
                            child: Image.asset("assets/icon/Gair.png",height: 44,width: 44,),
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

                  CheckboxListTile(
                    activeColor: AppColors.checkbox,
                    checkColor: Colors.white,

                    title: Text(
                      "By entering your personal details, you hereby authorize HOME XP and or its service provider’s"
                          " to contact you and you agree to the terms and conditions",
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

                  Container(
                    padding:EdgeInsets.only(right: 20,left: 20),
                    width: 370,
                    height: 40,
                    child: RaisedButton(

                        color: AppColors.darkblue,
                        onPressed: (){

                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Propertydetail2 ()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("  Next ",
                          style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),
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




