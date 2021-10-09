import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ueepro/controller/home_controller.dart';

class Decor extends StatefulWidget {
  @override
  _DecorState createState() => _DecorState();
}

class _DecorState extends State<Decor> {
final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      // Main List View With Builder
      body: Container(
        child:Obx( () {
        if (homeController.isLoading.value)
          return Center(child: CircularProgressIndicator());
          else
          return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
      ListView.builder(
        itemCount: homeController.homeList.length,
        itemBuilder: (context, index) {
          return Card(
            child:Container(
              width: 400,
              height: 110,
              decoration: BoxDecoration(
                      color: Colors.red[600],
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      
                    ),
              child: Row(
                children: <Widget>[
                  Container(
                     margin: EdgeInsets.only(left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: new DecorationImage(
            image: new NetworkImage(homeController.homeList[index].image,),
            fit: BoxFit.cover,
          ), 
                    ),
                   
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          homeController.homeList[index].name,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            homeController.homeList[index].description,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            homeController.homeList[index].price,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
          ]));})),
    );
  }
}
