import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:home_ex/product.dart';
import 'product.dart';
import 'propertydetail.dart';

class Listview extends StatefulWidget {
  const Listview({Key key}) : super(key: key);

  @override
  _ListviewState createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
        content: new Text('Do you want to exit an App',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Regular"),),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes',style: TextStyle(fontSize: 12,fontFamily: "RobotoCondensed-Bold"),),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.darkblue,
          title: Text("Shortlisted.."),
        ),
        body: Container(
padding: EdgeInsets.only(left: 10,right: 10),
          child: ListView.builder(
            itemCount: dummydata.dummyData.length,
            itemBuilder: (context, index) {
              ChatModel _model = dummydata.dummyData[index];
              return Container(
                height: 148,
                width: 378,
                child: Card(

                  shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(5.0),
                    side: new BorderSide(color: AppColors.grey, width: 2.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Divider(
                        height: 10,
                      ),
                      ListTile(

                        title: Row(
                          children: <Widget>[

                            GestureDetector(

                                onTap: () {

                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Propertydetail()),
                                  );
                                },


                                child: Image.asset(_model.image,fit: BoxFit.fill,height:100,width: 100,)),
                            SizedBox(width: 10,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                      Row(
                                        children: [
                                          Image.asset("assets/icon/Rupees.png",height: 15,width: 15,),
                                          SizedBox(width: 10,),
                                          Text(_model.price,style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 18),),
                                        ],
                                      ),

                                SizedBox(
                                  width: 16.0,
                                ),
                                Text(
                                  _model.title,
                                  style: TextStyle(fontSize: 12.0,fontFamily: "RobotoCondensed-Bold",),
                                ),
                                Text(
                                  _model.subtitle,
                                  style: TextStyle(fontSize: 12.0,fontFamily: "RobotoCondensed-Regular",),
                                ),
                                Text(_model.message,
                                  style: TextStyle(fontSize: 8,fontFamily: "RobotoCondensed-Regular",),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  height: 19,
                                  width: 90,
                                  color: AppColors.pink,
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Text("CONTACT US NOW",style: TextStyle(fontFamily: 'RobotoCondensed-Bold',fontSize: 10,color: Colors.white),)),
                                ),
                                // ElevatedButton(
                                //   style: ButtonStyle(
                                //     backgroundColor: MaterialStateProperty.all(AppColors.pink),
                                //   ),
                                //     onPressed:(){
                                //       Navigator.push(
                                //         context,
                                //         MaterialPageRoute(builder: (context) => Propertydetail()),
                                //       );
                                //     }, child: Text("CONTACT US NOW",style: TextStyle(color: Colors.white,fontSize: 8,fontFamily: 'RobotoCondensed-Bold'),)
                                //
                                // )
                              ],
                            ),

                          ],
                        ),


                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
