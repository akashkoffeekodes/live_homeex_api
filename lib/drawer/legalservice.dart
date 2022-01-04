import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Appcolor.dart';
import '../appliedservices.dart';

class Legalservice extends StatefulWidget {
  const Legalservice({Key key}) : super(key: key);

  @override
  _LegalserviceState createState() => _LegalserviceState();
}

class _LegalserviceState extends State<Legalservice> {
  bool checkedValue = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkblue,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Image.asset(
            "assets/icon/backmenu.png",
          ),
        ),
        title: Text(
          "Legal Services",
          style: TextStyle(
              fontFamily: "RobotoCondensed-Regular",
              fontSize: 12,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/icon/legal.png",
                        height: 30,
                        width: 75,
                      ),
                      Column(
                        children: [
                          Text(
                            "Share your requirements with ",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 8),
                          ),
                          Text(
                            " us and we'll get back to you within 24 hrs.",
                            style: TextStyle(
                                fontFamily: "RobotoCondensed-Regular",
                                fontSize: 8),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      RaisedButton(
                          color: AppColors.pink,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "CONTACT US NOW ",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "RobotoCondensed-Bold",
                                fontSize: 8),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Legal Services Packages",
                style:
                    TextStyle(fontFamily: "RobotoCondensed-Bold", fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Get online legal advice and assistance from india’s",
                style: TextStyle(
                    fontFamily: "RobotoCondensed-Regular", fontSize: 12),
              ),
              Text(
                "tap to rate alwayer",
                style: TextStyle(
                    fontFamily: "RobotoCondensed-Regular", fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              ExpandableNotifier(
                  child: Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.grey,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Agreement to Sell / banakhat / Satakhat",
                                style: Theme.of(context).textTheme.bodyText1,
                              )),

                          //our home xp designe is here
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Package includes:",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "  - Agreement to Sell Document thoroughly checked and .....",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Document verified by an experienced team of expert ..",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Detailed Report provided with sign and stamp of lawyer...",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - The service pack includes detailed phone ... ",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/Rupees.png",
                                    width: 11,
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  RaisedButton(
                                      color: AppColors.pink,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Appliedservice()),
                                        );
                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Apply ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "RobotoCondensed-Bold",
                                            fontSize: 8),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              ExpandableNotifier(
                  child: Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.grey,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Rent Agrement",
                                style: Theme.of(context).textTheme.bodyText1,
                              )),

                          //our home xp designe is here
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Package includes:",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "  - Agreement to Sell Document thoroughly checked and .....",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Document verified by an experienced team of expert ..",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Detailed Report provided with sign and stamp of lawyer...",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - The service pack includes detailed phone ... ",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/Rupees.png",
                                    width: 11,
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  RaisedButton(
                                      color: AppColors.pink,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Apply ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "RobotoCondensed-Bold",
                                            fontSize: 8),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              ExpandableNotifier(
                  child: Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.grey,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Sale Dade",
                                style: Theme.of(context).textTheme.bodyText1,
                              )),

                          //our home xp designe is here
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Package includes:",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "  - Agreement to Sell Document thoroughly checked and .....",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Document verified by an experienced team of expert ..",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Detailed Report provided with sign and stamp of lawyer...",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - The service pack includes detailed phone ... ",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/Rupees.png",
                                    width: 11,
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  RaisedButton(
                                      color: AppColors.pink,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Apply ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "RobotoCondensed-Bold",
                                            fontSize: 8),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              ExpandableNotifier(
                  child: Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.grey,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Mortgage deed / mortgage",
                                style: Theme.of(context).textTheme.bodyText1,
                              )),

                          //our home xp designe is here
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Package includes:",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "  - Agreement to Sell Document thoroughly checked and .....",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Document verified by an experienced team of expert ..",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Detailed Report provided with sign and stamp of lawyer...",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - The service pack includes detailed phone ... ",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/Rupees.png",
                                    width: 11,
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  RaisedButton(
                                      color: AppColors.pink,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Apply ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "RobotoCondensed-Bold",
                                            fontSize: 8),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              ExpandableNotifier(
                  child: Padding(
                padding: const EdgeInsets.all(1),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.grey,
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    children: <Widget>[
                      ScrollOnExpand(
                        scrollOnExpand: true,
                        child: ExpandablePanel(
                          theme: const ExpandableThemeData(
                            headerAlignment:
                                ExpandablePanelHeaderAlignment.center,
                            tapBodyToCollapse: true,
                          ),
                          header: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "partnership deed",
                                style: Theme.of(context).textTheme.bodyText1,
                              )),

                          //our home xp designe is here
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Package includes:",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 14),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "  - Agreement to Sell Document thoroughly checked and .....",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Document verified by an experienced team of expert ..",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - Detailed Report provided with sign and stamp of lawyer...",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "  - The service pack includes detailed phone ... ",
                                style: TextStyle(
                                    fontFamily: "RobotoCondensed-Regular",
                                    fontSize: 12),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/icon/Rupees.png",
                                    width: 11,
                                    height: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "200.00",
                                    style: TextStyle(
                                        fontFamily: "RobotoCondensed-Bold",
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 150,
                                  ),
                                  RaisedButton(
                                      color: AppColors.pink,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Text(
                                        "Apply ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "RobotoCondensed-Bold",
                                            fontSize: 8),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          builder: (_, collapsed, expanded) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10),
                              child: Expandable(
                                collapsed: collapsed,
                                expanded: expanded,
                                theme: const ExpandableThemeData(
                                    crossFadePoint: 0),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Legal Services from Experts",
                style:
                    TextStyle(fontFamily: "RobotoCondensed-Bold", fontSize: 24),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Consult the best legal experts",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "before you buy a property",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "End-to-end Legal Assistance",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Get Legal Assistance for Title check, Sale deed,",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "Property Registration & much more",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Verified Top Rated Lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Consult with one of the finest & top-rated ",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "legal experts, attorneys and lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lowest Prices",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Consult with one of the finest & top-rated",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "legal experts, attorneys and lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Quick Assessments",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Consult with one of the finest & top-rated",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "legal experts, attorneys and lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Easy to Understand",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Consult with one of the finest & top-rated",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "legal experts, attorneys and lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icon/Clegal.png",
                              height: 21,
                              width: 21,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "At your comfort",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Bold",
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Consult with one of the finest & top-rated",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                                Text(
                                  "legal experts, attorneys and lawyers",
                                  style: TextStyle(
                                      fontFamily: "RobotoCondensed-Regular",
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Get Free Advice on your Legal Services requirement",
                style:
                    TextStyle(fontFamily: "RobotoCondensed-Bold", fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Want to connect us",
                    style: TextStyle(
                        fontFamily: "RobotoCondensed-Bold", fontSize: 14),
                  )),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 12),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: AppColors.textfeild,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: "Nmae",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 12),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: AppColors.textfeild,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: "Email",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Mobile",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 12),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: AppColors.textfeild,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: "Mobile",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Massage",
                          style: TextStyle(
                              fontFamily: "RobotoCondensed-Regular",
                              fontSize: 12),
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      style: TextStyle(
                        fontSize: 10,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        fillColor: AppColors.textfeild,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintText: "Massage",
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.topLeft,
                  child: CheckboxListTile(
                    activeColor: AppColors.checkbox,
                    title: Text(
                      "I agree to Homexp T&C",
                      style: TextStyle(
                          fontSize: 10, fontFamily: "RobotoCondensed-Regular"),
                    ),
                    value: checkedValue,
                    onChanged: (newValue) {
                      setState(() {
                        checkedValue = newValue;
                      });
                    },
                    controlAffinity: ListTileControlAffinity
                        .leading, //  <-- leading Checkbox
                  )),
              ButtonTheme(
                minWidth: 300,
                child: RaisedButton(
                  onPressed: () {},
                  color: AppColors.darkblue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    "Request to call back",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "RobotoCondensed-Regular"),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
