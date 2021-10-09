import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Access extends StatefulWidget {
  @override
  _AccessState createState() => _AccessState();
}

class _AccessState extends State<Access> {

  // Title List Here
  var titleList = [
    "Makeup Brushes",
    "Lipstick",
    "Anklet", 
  ];

  // Description List Here
  var descList = [
    "3 brushes",
    "Red",
   "Gold",
   
  ];
  var pricList = [
    "Rs.2000",
    "Rs.1400",
    "Rs.1500",
   
  ];

  // Image Name List Here
  var imgList = [
        "https://static.beautytocare.com/media/catalog/product/cache/global/image/650x650/85e4522595efc69f496374d01ef2bf13/f/l/flormar-makeup-brush-set.jpg",
        "https://www.paccosmetics.com/wp-content/uploads/2020/05/LPSK_MAT01.main_-2.jpg",
        "https://m.media-amazon.com/images/I/71obJbT5srL._AC_UL1050_.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
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
            image: new NetworkImage(imgList[index]),
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
                          titleList[index],
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
                            descList[index],
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
                            pricList[index],
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
    );
  }
}
