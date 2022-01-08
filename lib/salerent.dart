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
  List categories = ['Sale', 'Rent', 'Farmhouse', 'Auction'];
  int click;
  int clicked;

  int val = -1;
  int _n = 0;
  int _m = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void addmin() {
    setState(() {
      _m++;
    });
  }

  void minusmin() {
    setState(() {
      if (_m != 0) _m--;
    });
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text(
              'Are you sure?',
              style:
                  TextStyle(fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
            ),
            content: new Text(
              'Do you want to exit an App',
              style: TextStyle(
                  fontSize: 12, fontFamily: "RobotoCondensed-Regular"),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text(
                  'No',
                  style: TextStyle(
                      fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text(
                  'Yes',
                  style: TextStyle(
                      fontSize: 12, fontFamily: "RobotoCondensed-Bold"),
                ),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "Sell or Rent your Property",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Bold", fontSize: 24),
                    ),
                    Text(
                      "This data will be saved for your future applications",
                      style: TextStyle(
                          fontFamily: "RobotoCondensed-Regular", fontSize: 12),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "assets/image/sellor rent.png",
                      height: 214,
                      width: 329,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Selected package",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 0.2, color: Colors.grey)),
                      height: 40,
                      width: 330,
                      child: DropdownButton(
                        isExpanded: true,
                        borderRadius: BorderRadius.circular(10),
                        isDense: true,
                        underline: SizedBox(),
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(
                              "Sliver",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "RobotoCondensed-Bold"),
                            ),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Gold",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "RobotoCondensed-Bold"),
                            ),
                            value: 2,
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Diomand",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "RobotoCondensed-Bold"),
                            ),
                            value: 3,
                          )
                        ],
                        onChanged: (int value) {
                          setState(() {
                            _value = value;
                          });
                        },
                        hint: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Select item",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: "RobotoCondensed-Bold"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                                color: clicked == 1
                                    ? AppColors.pink
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    clicked = 1;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Sale",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                          Expanded(
                            child: RaisedButton(
                                color: clicked == 2
                                    ? AppColors.pink
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    clicked = 2;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Rent",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                          Expanded(
                            child: RaisedButton(
                                color: clicked == 3
                                    ? AppColors.pink
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    clicked = 3;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Farmhouse",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 10),
                                )),
                          ),
                          Expanded(
                            child: RaisedButton(
                                color: clicked == 4
                                    ? AppColors.pink
                                    : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    clicked = 4;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Aucation",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Posted By",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                                color:
                                    click == 1 ? AppColors.pink : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    click = 1;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Agent",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: RaisedButton(
                                color:
                                    click == 2 ? AppColors.pink : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    click = 2;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Ownwe",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: RaisedButton(
                                color:
                                    click == 3 ? AppColors.pink : Colors.white,
                                onPressed: () {
                                  setState(() {
                                    click = 3;
                                  });
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1)),
                                child: Text(
                                  "Builder",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                )),
                          ),
                        ],
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 35),
                    //   child: Row(
                    //     children: [
                    //       RaisedButton(
                    //           color: click == 1 ? AppColors.pink : Colors.white,
                    //           onPressed: () {
                    //             setState(() {
                    //               click = 1;
                    //             });
                    //           },
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(1)),
                    //           child: Text(
                    //             "Agent",
                    //             style: TextStyle(
                    //                 color: Colors.grey,
                    //                 fontFamily: "RobotoCondensed-Bold",
                    //                 fontSize: 12),
                    //           )),
                    //       SizedBox(
                    //         width: 12,
                    //       ),
                    //       RaisedButton(
                    //           color: click == 2 ? AppColors.pink : Colors.white,
                    //           onPressed: () {
                    //             setState(() {
                    //               click = 2;
                    //             });
                    //           },
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(1)),
                    //           child: Text(
                    //             "Ownwe",
                    //             style: TextStyle(
                    //                 color: Colors.grey,
                    //                 fontFamily: "RobotoCondensed-Bold",
                    //                 fontSize: 12),
                    //           )),
                    //       SizedBox(
                    //         width: 12,
                    //       ),
                    //       RaisedButton(
                    //           color: click ==3  ? AppColors.pink:Colors.white,
                    //           onPressed: () {
                    //             setState(() {
                    //               click=3;
                    //             });
                    //
                    //           },
                    //           shape: RoundedRectangleBorder(
                    //               borderRadius: BorderRadius.circular(1)),
                    //           child: Text(
                    //             "Builder",
                    //             style: TextStyle(
                    //                 color: Colors.grey,
                    //                 fontFamily: "RobotoCondensed-Bold",
                    //                 fontSize: 12),
                    //           )),
                    //     ],
                    //   ),
                    // ),

                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Locality / Project / Landmark",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 40,
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    "assets/icon/SSearch.png",
                                    height: 1,
                                    width: 1,
                                  ),
                                ),
                                isDense: true,
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: const BorderSide(color: Colors.red),
                                ),
                                hintText: "Where....?",
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Property type",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          //dropdown for property
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    width: 0.5, color: Colors.blueGrey)),
                            height: 40,
                            width: 330,
                            child: DropdownButton(
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(5),
                              isDense: true,
                              underline: SizedBox(),
                              value: _value,
                              items: [
                                DropdownMenuItem(
                                  child: Text(
                                    "Sliver",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "RobotoCondensed-Bold"),
                                  ),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Gold",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "RobotoCondensed-Bold"),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(
                                  child: Text(
                                    "Diomand",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "RobotoCondensed-Bold"),
                                  ),
                                  value: 3,
                                )
                              ],
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              },
                              hint: Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Select item",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: "RobotoCondensed-Bold"),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Bedroom",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.36,

                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  minus();
                                                },
                                                child: Container(
                                                  height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color: AppColors.pink,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: AppColors.grey,
                                                      size: 13,
                                                    )),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Text('$_n',
                                                      style: new TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'RobotoCondensed-Bold')),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  add();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .10,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.36,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  minusmin();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Text('$_m',
                                                      style: new TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                              'NotoSans-Regular')),
                                                ),
                                              ),

                                              InkWell(
                                                onTap: () {
                                                  addmin();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6)),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Balcony",
                                      style: TextStyle(
                                          fontFamily: "RobotoCondensed-Bold",
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.36,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  minus();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color: AppColors.pink,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(5)),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: AppColors.grey,
                                                      size: 13,
                                                    )),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Text('$_n',
                                                      style: new TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                          'RobotoCondensed-Bold')),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  add();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(6)),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              .10,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                              .size
                                              .width *
                                              0.36,
                                          child: Row(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  minusmin();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(6)),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                              Expanded(
                                                child: Center(
                                                  child: Text('$_m',
                                                      style: new TextStyle(
                                                          fontSize: 14.0,
                                                          color: Colors.black,
                                                          fontFamily:
                                                          'NotoSans-Regular')),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  addmin();
                                                },
                                                child: Container(
                                                    height: 35,width: 35,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                        color:
                                                        AppColors.pink,
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(6)),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                      size: 13,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                  ],
                                ),

                              ],
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Super Area",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12),
                          ),

                          //TextFeilg with dropdown

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
height: 45,
                                  child: TextFormField(
                                    
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                    decoration: InputDecoration(
                                      isDense: true,

                                      fillColor: AppColors.textfeild,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: "Carpet area",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.2, color: Colors.grey)),
                                height: 45,
                                width: 100,
                                child: DropdownButton(
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(5),
                                  isDense: true,
                                  underline: SizedBox(),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Sqft",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Inch",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Meter",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 3,
                                    )
                                  ],
                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Select item",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 45,
                                  child: TextFormField(
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.fromLTRB(
                                          20.0, 8.0, 20.0, 8.0),
                                      fillColor: AppColors.textfeild,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: "Builder Area",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.2, color: Colors.grey)),
                                height: 45,
                                width: 100,
                                child: DropdownButton(
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(5),
                                  isDense: true,
                                  underline: SizedBox(),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Sliver",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Gold",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Diomand",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 3,
                                    )
                                  ],
                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Select item",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 45,
                                  child: TextFormField(
                                    style: TextStyle(
                                      fontSize: 10,
                                    ),
                                    decoration: InputDecoration(
                                  isDense: true,
                                      fillColor: AppColors.textfeild,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          color: Colors.blueGrey,
                                        ),
                                      ),
                                      hintText: "Super Builder Area",
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 0.2, color: Colors.grey)),
                                height: 45,
                                width: 100,
                                child: DropdownButton(
                                  isExpanded: true,
                                  borderRadius: BorderRadius.circular(5),
                                  isDense: true,
                                  underline: SizedBox(),
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(
                                        "Sqft",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "CM",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                      child: Text(
                                        "Inch",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                      value: 3,
                                    )
                                  ],
                                  onChanged: (int value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  },
                                  hint: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Select item",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontFamily: "RobotoCondensed-Bold"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Availability",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, right: 8, left: 20),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                hintText: "Under Constraction",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, right: 20, left: 10),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                hintText: "Ready to Move",
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
////Furnishing status
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Furnishing status",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                hintText: "Semi Furnishing",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                hintText: "Unfurnishing ",
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 10,
                              ),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 8.0),
                                fillColor: AppColors.textfeild,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                hintText: "Full Furnishing ",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

////faceing
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 10, right: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Age Of Constraction",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  height: 50,
                                  width: 200,
                                  child: DropdownButton(
                                    isExpanded: true,
                                    borderRadius: BorderRadius.circular(5),
                                    isDense: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text(
                                          "EAST",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "WEST",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "NORTH",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 3,
                                      )
                                    ],
                                    onChanged: (int value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    hint: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Select item",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, top: 10, right: 20, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Facing",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          width: 0.2, color: Colors.grey)),
                                  height: 50,
                                  width: 200,
                                  child: DropdownButton(
                                    isExpanded: true,
                                    borderRadius: BorderRadius.circular(5),
                                    isDense: true,
                                    underline: SizedBox(),
                                    value: _value,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text(
                                          "EAST",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "WEST",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                        child: Text(
                                          "NORTH",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                        value: 3,
                                      )
                                    ],
                                    onChanged: (int value) {
                                      setState(() {
                                        _value = value;
                                      });
                                    },
                                    hint: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Select item",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily:
                                                  "RobotoCondensed-Bold"),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Reserved parking",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    minus();
                                  },
                                  child: Container(
                                      height: 35,width: 35,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: AppColors.pink,
                                          borderRadius:
                                          BorderRadius
                                              .circular(5)),
                                      child: Icon(
                                        Icons.remove,
                                        color: AppColors.grey,
                                        size: 13,
                                      )),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('$_n',
                                        style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontFamily:
                                            'RobotoCondensed-Bold')),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    add();
                                  },
                                  child: Container(
                                      height: 35,width: 35,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color:
                                          AppColors.pink,
                                          borderRadius:
                                          BorderRadius
                                              .circular(6)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 13,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 40,),
                          Expanded(
                            child: Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    minus();
                                  },
                                  child: Container(
                                      height: 35,width: 35,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: AppColors.pink,
                                          borderRadius:
                                          BorderRadius
                                              .circular(5)),
                                      child: Icon(
                                        Icons.remove,
                                        color: AppColors.grey,
                                        size: 13,
                                      )),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Text('$_n',
                                        style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                            fontFamily:
                                            'RobotoCondensed-Bold')),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    add();
                                  },
                                  child: Container(
                                      height: 35,width: 35,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color:
                                          AppColors.pink,
                                          borderRadius:
                                          BorderRadius
                                              .circular(6)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 13,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Amenities",
                        style: TextStyle(
                            fontFamily: "RobotoCondensed-Bold", fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        height:45,
                        child: TextFormField(
                          style: TextStyle(
                            fontSize: 10,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Container(
                                height: 9,
                                width: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/icon/SSearch.png"),
                                )),
                            isDense: true,
                            fillColor: AppColors.textfeild,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.blueGrey,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            hintText: "Smart home",
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/Bhome.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Smart Home",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Gcar.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Parking",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Gkids.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Kids Play Area",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Ggarden.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Garden",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
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
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 5, left: 25),
                              child: Image.asset(
                                "assets/icon/Ggym.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                bottom: 10,
                                left: 25,
                              ),
                              child: Text(
                                "Gym",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Gmodular.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Modular Kitchen",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Gjogger.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Jogges",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, bottom: 5),
                              child: Image.asset(
                                "assets/icon/Gair.png",
                                height: 44,
                                width: 44,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Air Condition",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 10),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    CheckboxListTile(
                      activeColor: AppColors.checkbox,
                      checkColor: Colors.white,

                      title: Text(
                        "By entering your personal details, you hereby authorize HOME XP and or its service provider’s"
                        " to contact you and you agree to the terms and conditions",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: "RobotoCondensed-Regular"),
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

                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.only(right: 20, left: 20),
                        width: 370,
                        height: 40,
                        child: RaisedButton(
                            color: AppColors.darkblue,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Propertydetail2()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              "  Next ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "RobotoCondensed-Bold",
                                  fontSize: 15),
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
