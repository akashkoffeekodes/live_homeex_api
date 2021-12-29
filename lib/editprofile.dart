import 'dart:io';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ex/Appcolor.dart';
import 'package:image_picker/image_picker.dart';

class Editprofilt extends StatefulWidget {
  const Editprofilt({Key key}) : super(key: key);

  @override
  _EditprofiltState createState() => _EditprofiltState();
}

class _EditprofiltState extends State<Editprofilt> {

  File _image;


  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 15,),
          child: InkWell(
            onTap: (){
              Navigator.pop(context);

            },
            child: Image.asset("assets/icon/backmenu.png",
            ),
          ),
        ),

        title: Text("Edit Profile",style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              color: AppColors.darkblue,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Column(
                   children: [
                     GestureDetector(
                       onTap: () {
                         _showPicker(context);
                       },
                       child: CircleAvatar(
                         radius: 40,
                         backgroundColor: Colors.blue,
                         child: _image != null
                             ? ClipRRect(
                           borderRadius: BorderRadius.circular(40),
                           child: Image.file(
                             _image,
                             width: 150,
                             height: 150,
                             fit: BoxFit.cover,
                           ),
                         )
                             : Container(
                           decoration: BoxDecoration(
                               color: Colors.black87,
                               borderRadius: BorderRadius.circular(50)),
                           width: 130,
                           height: 130,
                           child: Icon(
                             Icons.camera_alt,
                             color: Colors.white,
                           ),
                         ),
                       ),
                     ),

                     Padding(
                       padding: const EdgeInsets.only(top: 10, left: 25),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text(
                             "Smart Home",
                             style: TextStyle(
                               fontFamily: "RobotoCondensed-Bold",
                               fontSize: 12,color: Colors.white
                             ),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text(
                             "Smarthome@gmail.com",
                             style: TextStyle(
                               fontFamily: "RobotoCondensed-Regular",
                               fontSize: 10,color: Colors.white
                             ),
                           ),
                           SizedBox(
                             height: 10,
                           ),

                         ],
                       ),
                     ),
                   ],
                 ),

               ],
             ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text("Edit Your Personal Informmation",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 15),)),

                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Text("Name",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
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

                          ),

                          hintText: "Name",
                        ),
                      ),


                      SizedBox(height: 10,),
                      Text("Email",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
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

                          ),

                          hintText: "Email",
                        ),
                      ),



                      SizedBox(height: 10,),
                      Text("Mobile",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
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

                          ),

                          hintText: "Mobile",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),


            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              alignment: Alignment.topLeft,
              child: Text("PROPERTY POSTED BY", style: TextStyle(
                  fontFamily: "RobotoCondensed-Regular", fontSize: 12),
              ),
            ),

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

            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Text("Location",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 10),),
            ),
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

                ),

                hintText: "Location",
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(20),
              child: ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                child: RaisedButton(
                    color:AppColors.darkblue,
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Editprofilt()),
                      );
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                    child: Text(
                      "  Log Out ",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "RobotoCondensed-Bold",
                          fontSize: 10),
                    )),
              ),
            ),

          ],
        ),
      ),
    );
  }










  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: Wrap(
                children: <Widget>[
                  ListTile(
                      leading: Icon(Icons.photo_library),
                      title: Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  ListTile(
                    leading: Icon(Icons.photo_camera),
                    title: Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });

    Widget _getActionButtons() {
      return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Container(
                    child: RaisedButton(
                      child: Text("Save"),
                      textColor: Colors.white,
                      color: Colors.green,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    )),
              ),
              flex: 2,
            ),

          ],
        ),
      );
    }
  }
}
