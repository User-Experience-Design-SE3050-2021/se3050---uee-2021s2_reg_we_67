import 'package:flutter/material.dart';
import 'package:ueepro/pages/electronical/tablet.dart';

import 'desktop.dart';
import 'laptop.dart';
import 'mobile.dart';

class Electronical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 80.0, top: 20),
      child: Container(
        child: Text("Electronical Devices",style: TextStyle(
                            color: Colors.red[600],
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),),
      )
    ),
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 22,
                        ),
      )
    ),
  ],
      ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Transform.translate(
                  offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
                  child: Container(
                    width: width,
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: DefaultTabController(
                        length: 4,
                        child: Column(
                          children: <Widget>[
                            TabBar(
                              labelColor: Colors.black,
                              labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                              unselectedLabelColor: Colors.grey[400],
                              unselectedLabelStyle: TextStyle(
                                  fontWeight: FontWeight.normal, fontSize: 17),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicatorColor: Colors.transparent,
                              tabs: <Widget>[
                                Tab(
                                  child: Text("Mobiles",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            
                          ),),
                                ),
                                Tab(
                                  child: Text("Tablets",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                           
                          ),),
                                ),
                                Tab(
                                  child: Text("Laptops",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            
                          ),),
                                ),
                                Tab(
                                  child: Text("Desktops",style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            
                          ),),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 1700,
                              child: TabBarView(
                                children: <Widget>[
                                  Mobile(),
                                  Tablet(),
                                  Laptop(),
                                  Desktop(),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}