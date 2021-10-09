import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cloth extends StatefulWidget {
  @override
  _ClothState createState() => _ClothState();
}

class _ClothState extends State<Cloth> {
  // Title List Here
  var titleList = [
    "Frock",
    "Blouse",
    "Frock",
    "Saree",
    "Saree",
    "Skirt",
    
  ];

  // Description List Here
  var descList = [
    "Long",
    "Long Sleeve",
    "Short",
    "Pink",
    "Red",
    "Long",
   
  ];
  var pricList = [
    "Rs.4000",
    "Rs.1900",
    "Rs.2500",
    "Rs.7600",
    "Rs.9870",
    "Rs.1580",
   
  ];

  // Image Name List Here
  var imgList = [
        "https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/12491462/2020/9/28/7a05609a-85f7-485d-b62d-fbe3fb19c4291601286030626-Inddus-Women-Dresses-521601286027105-1.jpg",
        "https://image.made-in-china.com/202f0j00uIFUlgTtVCkH/2020-Autumn-Ladies-Tops-Flower-Print-Shirt-Women-Long-Sleeve-Clothes-T-Shirt-Round-Neck-Bandage-Fashion-Blouse.webp",
        "https://images.unsplash.com/photo-1617922001439-4a2e6562f328?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d29tZW4lMjBmYXNoaW9ufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80",
        "https://3.imimg.com/data3/EE/FH/MY-986021/ladies-designer-sarees-500x500.jpg",
        "https://images.unsplash.com/photo-1618901185975-d59f7091bcfe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=870&q=80",
        "https://www.dhresource.com/0x0/f2/albu/g3/M00/7D/B7/rBVaHFa674yAZfNzAAnZdFgb36g339.jpg"
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
