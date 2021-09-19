
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> images = [
    'https://stylesatlife.com/wp-content/uploads/2018/03/Gown-style-Indian-Frock.jpg',
    'https://folder.pk/wp-content/uploads/2017/10/Decent-Black-Frock.jpg',
    'https://sc01.alicdn.com/kf/HTB1EzEjif9TBuNjy1zbq6xpepXa7/229989297/HTB1EzEjif9TBuNjy1zbq6xpepXa7.jpg',
    'https://i.ytimg.com/vi/jWa9atfXMR0/maxresdefault.jpg',
    'https://i.ytimg.com/vi/3ajK8glRag4/hqdefault.jpg',
    'https://i1.wp.com/he.com.pk/wp-content/uploads/2015/01/Net-Frocks-Designs-in-Pakistan-2015-Latest.jpg',
    'https://stylesatlife.com/wp-content/uploads/2019/01/30-Latest-Models-of-Long-Frocks-with-Images-in-2020.jpg',
  ];
  
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
    Container(
      margin: EdgeInsets.only(top: 0),
        height: 120,
        width: 420,
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
              ),
              child: Stack(
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: 30,
                    left: 80,
                    child:Text(
                      "Eshop in unique style",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    right: 20,
                    left: 20,
                   child:Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
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
                    child:Container(
                       margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 22,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),),
                  ),),
                  ],),
    ),
    Container(
 margin: EdgeInsets.only(top: 40,right: 170),
 child: Text(
                          "Mostly Recommended",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
    ),
    Container(
          child: CarouselSlider.builder(
        itemCount: images.length,
        options: CarouselOptions(
          height: 230,
          autoPlay: true,
          aspectRatio: 2.0,
        ),
        itemBuilder: (context, index, realIdx) {
          return Container(
            margin: EdgeInsets.only(top: 20, bottom: 5),
              height: 420,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 400,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      
                    ),
                     child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
                    child: Image.network(images[index],
                    fit: BoxFit.cover,
                    ),
                     ), 
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 140.5,
                      left: 7,
                    ),
                    child:Text("Frock"),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 160.5,
                      left: 10,
                    ),
                    child:Text("Rs.200"),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      left: 255,
                    ),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child:Icon(
                          Icons.star,
                          color: Colors.grey,
                          size: 22,
                        ),
                  ),
                ]));
        },
      )),
      Container(
 margin: EdgeInsets.only(top: 10,right: 175),
 child: Text(
                          "Choose your category",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
    ),
    SizedBox(height: 10,),
    Container(
                       margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: new DecorationImage(
            image: new NetworkImage('https://www.fashionlady.in/wp-content/uploads/2015/07/fashion-for-women-in-their-30s.jpg'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 30, right: 5, left: 5),
                   child:Text(
                      "Woman's Fashion",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                     image: new DecorationImage(
            image: new NetworkImage('https://resize.indiatvnews.com/en/resize/newbucket/715_-/2018/05/untitled-1-1526865724.jpg'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 30, right: 5, left: 5),
                   child:Text(
                      "Men's Fashion",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                     SizedBox(
                          width: 20,
                        ),
                    Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: new DecorationImage(
            image: new NetworkImage('https://cdn.trendhunterstatic.com/thumbs/kid-fashion.jpeg'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 30, right: 5, left: 5),
                   child:Text(
                      "Kid's Fashion",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                      ],
                    ),),
                    SizedBox(height: 15,),
                    Container(
                       margin: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    image: new DecorationImage(
            image: new NetworkImage('https://image.shutterstock.com/image-photo/beautiful-composition-cosmetics-on-wooden-600w-1068039428.jpg'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 30, right: 5, left: 5),
                   child:Text(
                      "Health & Beauty",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                     image: new DecorationImage(
            image: new NetworkImage('https://media.istockphoto.com/photos/responsive-design-theme-example-electronic-gadgets-on-white-picture-id615716848'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 30, right: 5, left: 5),
                   child:Text(
                      "Electronical Devices",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                     SizedBox(
                          width: 20,
                        ),
                    Container(
                    margin:
                        EdgeInsets.only(top: 5, right: 5, left: 5),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      image: new DecorationImage(
            image: new NetworkImage('https://timeforyou.cleaning/site/img/tips-articles/11-freshen-up/1.jpg'),
            fit: BoxFit.cover,
          ), 
                    ),
                    child:Container(
                       margin:
                        EdgeInsets.only(top: 28, right: 5, left: 5),
                   child:Text(
                      "Home & Lifestyle",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.5,
                            fontWeight: FontWeight.bold
                          ),
                   ),),),
                      ],
                    ),),
                  
          ],
          ),
          ),
    );
  }
}