import 'package:flutter/material.dart';
import '../Appcolor.dart';
import '../dashboard.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Container(
            padding: EdgeInsets.all(18),
            child: InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashBoard()),
                );
              },

              child: Image.asset(
                "assets/icon/backmenu.png",
              ),
            )),
        title: Text("Applied Services",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 13),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, ),
              child: Card(
                color: AppColors.darkblue,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/icon/legalwhite.png",
                        height: 54,
                        width: 48,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal Loan ",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 12,color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Tracking ID: HOMEXP- 876487",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 12,color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "18 Aug, 12:13 PM",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 10,color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 10),
                      child: Column(

                        children: [
                          Text(
                            "Current  Stage",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 8,color: Colors.white),
                          ),
                          RaisedButton(
                              color: AppColors.pink,
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "UNDER PROGRES" ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "RobotoCondensed-Bold",
                                    fontSize: 8),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            Theme(
              data: ThemeData(
                  accentColor: Colors.pinkAccent,

                  colorScheme: ColorScheme.light(
                    background: Colors.pink,
                      primary: Colors.pinkAccent
                  )
              ),
              child: Stepper(

                steps:[

                  Step(
                    title: Container(
                      height: 80,
                      width: 378,
                      child: Card(

                        color: AppColors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pending",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                              SizedBox(height: 10,),

                              Text("Processing to next step",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      children: <Widget>[

                      ],
                    ),
                    isActive: currentStep >= 0,
                    // state: currentStep == 0 ?
                    // StepState.editing : StepState.complete,
                  ),
                  Step(
                    title: Container(
                      height: 80,
                      width: 378,
                      child: Card(

                        color: AppColors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Application Under Process",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                              SizedBox(height: 10,),

                              Text("Processing to next step",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      children: <Widget>[
                      ],
                    ),
                    // isActive: currentStep >= 1,
                    // state: currentStep == 1 ?
                    // StepState.editing : currentStep < 1 ? StepState.disabled: StepState.complete,
                  ),
                  Step(
                    title: Container(
                      height: 80,
                      width: 378,
                      child: Card(

                        color: AppColors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Pending",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                              SizedBox(height: 10,),

                              Text("Processing to next step",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      children: <Widget>[

                      ],
                    ),
                    // isActive:currentStep >= 2,
                    // state: currentStep == 2 ?
                    // StepState.editing : currentStep < 2 ? StepState.disabled: StepState.complete,
                  ),
                  Step(
                    title: Container(
                      height: 80,
                      width: 378,
                      child: Card(

                        color: AppColors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Application in Query",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                              SizedBox(height: 10,),

                              Text("Lorem Ipsum is simply dummy text of the printin",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      children: <Widget>[

                      ],
                    ),
                    // isActive:currentStep >= 3,
                    // state: currentStep == 3 ?
                    // StepState.editing : currentStep < 3 ? StepState.disabled: StepState.complete,
                  ),
                  Step(
                    title: Container(
                      height: 80,
                      width: 378,
                      child: Card(

                        color: AppColors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Query Under Process",style: TextStyle(fontFamily: "RobotoCondensed-Bold",fontSize: 12),),
                              SizedBox(height: 10,),

                              Text("Processing to next step",style: TextStyle(fontFamily: "RobotoCondensed-Regular",fontSize: 12),),

                            ],
                          ),
                        ),
                      ),
                    ),
                    content: Column(
                      children: <Widget>[

                      ],
                    ),
                    // isActive:currentStep >= 4,
                    // state: currentStep == 4 ?
                    // StepState.editing : currentStep < 4 ? StepState.disabled: StepState.complete,
                  ),

                ],
                // currentStep: currentStep,
                // onStepTapped: (int step)
                // {
                //   setState(() {
                //     currentStep = step;
                //   });
                // },
                // onStepCancel: ()
                // {
                //   currentStep > 0 ?
                //   setState(() => currentStep -= 1) : null;
                // },
                // onStepContinue: ()
                // {
                //   currentStep < 2 ?
                //   setState(() => currentStep += 1): null;
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }



}