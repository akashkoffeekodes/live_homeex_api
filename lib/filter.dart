import 'package:flutter/material.dart';

import 'Appcolor.dart';

class Filter extends StatefulWidget {
  const Filter({Key key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {

  int _value;
  bool checkedValue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 15,
            bottom: 15,
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/icon/backmenu.png",
            ),
          ),
        ),
        title: Text(
          "Edit Profile",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child
            : Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                        color: AppColors.pink,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          "sale",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 12),
                        )),
                  ),
                  Expanded(
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          "Rent",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoCondensed-Bold",
                            fontSize: 12,
                          ),
                        )),
                  ),
                  Expanded(
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          "Farmhous",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 12),
                        )),
                  ),
                  Expanded(
                    child: RaisedButton(
                        color: Colors.white,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          "Auction",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "RobotoCondensed-Bold",
                              fontSize: 12),
                        )),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text("Locality / Project / Landmark",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 10),)),
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
              Container(
                alignment: Alignment.topLeft,
                child: Text("Property type", style: TextStyle(
                    fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                ),
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
                        child: Text("1BHK",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("2BHK",style: TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),),
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
                  alignment: Alignment.topLeft,
                  child: Text("Budget",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),)),
              SizedBox(height: 10,),
                  Image.asset("assets/icon/price.png",width: 374,),


              SizedBox(height: 10,),
              Row(

                children: [
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(top:8 ,bottom:8 ,right:8 ,left:10 ),
                    child: Column(
                      children: [
                        Text("₹ Min Amount",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 8,color: AppColors.grey),),
                        TextFormField(

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


                            hintText: "00",hintStyle: TextStyle(fontFamily: "RobotoCondensed-Bold,",fontSize: 10,color: Colors.black)                       ),
                        ),
                      ],
                    ),
                  ),),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.only(top:8 ,bottom:8 ,right:10 ,left:10 ),
                    child: Column(

                      children: [
                        Text("₹ Min Amount",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 8,color: AppColors.grey),),
                        TextFormField(

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


                            hintText: "10,00,00,0000",hintStyle: TextStyle(fontFamily: "RobotoCondensed-Bold",color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),)
                ],
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10,15, 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),

                    SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15,0, 15, 10),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Bathroom", style: TextStyle(
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
                    ),



                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.only(right: 20, left: 20),
                alignment: Alignment.topLeft,
                child: Text("Posted By", style: TextStyle(
                    fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                ),
              ),
              SizedBox(height: 5,),
              Container(
                padding: EdgeInsets.only(right: 10,left: 10),
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
                    padding: const EdgeInsets.only(right:8 ,left:10 ),
                    child: TextFormField(

                      style: TextStyle(
                        fontSize: 10,
                      ),

                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(20.0,0, 20.0,0 ),
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
                    padding: const EdgeInsets.only(top:8 ,bottom:8 ,right:10 , ),
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
              SizedBox(height: 10,),

              Text("Add More Filters",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15,color: AppColors.pink),),
              SizedBox(height: 10,),
              ButtonTheme(
                minWidth: 300,
                child:RaisedButton(

                  color: AppColors.darkblue,
                  onPressed: (){

                    // Navigator.push(context, MaterialPageRoute(builder: (context) => Propertydetail2 ()),);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("  Next ",
                    style: TextStyle(color: Colors.white,fontFamily: "RobotoCondensed-Bold",fontSize: 15),)), ),



              Row(

                children: [

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10,right: 10,bottom: 10),
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
                padding: EdgeInsets.only(top: 10,left: 10,bottom: 10),
                alignment: Alignment.topLeft,
                child: Text("Amenities", style: TextStyle(
                    fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: TextFormField(

                  style: TextStyle(
                    fontSize: 10,
                  ),

                  decoration: InputDecoration(
                    suffixIcon: Container(
                        height:1,
                        width: 1,
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


              Image.asset("assets/icon/price.png",height: 374,),


            ],
          ),
        ),
      ),
    );
  }
}
