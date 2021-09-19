import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ueepro/pages/profile.dart';


class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect( 
    child: Drawer(
      child: Column(children: <Widget>[
        Container(
            width: 310,
            height: 170,
            decoration: BoxDecoration(
              color: Colors.red[600],
            ),
            margin: EdgeInsets.only(right: 0),
            child: Stack(
                // ignore: deprecated_member_use
                overflow: Overflow.visible,
                children: <Widget>[
                  Positioned(
                    top: 40,
                    left: 10,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pinimg.com/originals/72/4a/62/724a62097d733bd32f2160808cf33362.jpg"),
                    radius: 40,
                      ),
                  ),
                   Positioned(
                    top: 60,
                    left: 110,
                   child: Text('Kishome Sivarajah', style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18, color: Colors.white)),
                  ),
                   Positioned(
                    top: 90,
                    left: 110,
                   child: Text('kishosiva13@gmail.com', style: TextStyle(
                                fontSize: 14, color: Colors.white)),
                  ),
                ])),
         SizedBox(
           height: 20,
         ),
         Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.person_rounded, color: Colors.black),
            title: Text('My Profile', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Profile()),
  )},
          ),),
          Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.list_alt, color: Colors.black),
            title: Text('Orders', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.home_repair_service, color: Colors.black),
            title: Text('Services', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.category_rounded, color: Colors.black),
            title: Text('Categories', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.person,color: Colors.black),
            title: Text("Woman's Fashion",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.person, color: Colors.black),
            title: Text("Men's Fashion",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.person, color: Colors.black),
            title: Text("Kid's Fashion",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.health_and_safety,color: Colors.black),
            title: Text("Health & Beauty",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.devices, color: Colors.black),
            title: Text("Electronical Devices",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 30,  
          child:ListTile(
            leading: Icon(Icons.home, color: Colors.black),
            title: Text("Home & Lifestyle",  style: TextStyle(
                                fontSize: 17, color: Colors.black),),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          SizedBox(height: 10,),
          Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.support_agent, color: Colors.black),
            title: Text('Support Center', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          Container(
            height: 40,
          child:ListTile(
            leading: Icon(Icons.settings, color: Colors.black,),
            title: Text('Settings', style: TextStyle(
                                fontSize: 17, color: Colors.black)),
            onTap: () => {Navigator.of(context).pop()},
          ),),
          SizedBox(
            height: 143,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red[600],
            ),
          child:ListTile(
            leading: Icon(Icons.logout_sharp, color: Colors.white),
            title: Text('Log Out',  style: TextStyle(
                                fontSize: 18, color: Colors.white),),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ),
        ],
      ),
    ),
          ),
     
    );
  }
}