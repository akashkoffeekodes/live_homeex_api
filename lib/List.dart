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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        title: Text("Shortlisted.."),
      ),
      body: Container(

        child: ListView.builder(
          itemCount: dummydata.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = dummydata.dummyData[index];
            return Card(

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



                            Text(_model.price,style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 18),),
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
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(AppColors.pink),
                              ),
                                onPressed:(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Propertydetail()),
                                  );
                                }, child: Text("CONTACT US NOW",style: TextStyle(color: Colors.white,fontSize: 8),)

                            )
                          ],
                        ),

                      ],
                    ),


                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
