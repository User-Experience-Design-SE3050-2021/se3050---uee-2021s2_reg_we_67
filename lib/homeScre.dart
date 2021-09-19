
// ignore: import_of_legacy_library_into_null_safe
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:ueepro/pages/home.dart';
import 'package:ueepro/pages/message.dart';
import 'package:ueepro/pages/profile.dart';
import 'package:ueepro/sideDrawer.dart';
import 'navbar_key.dart';

class HomeScre extends StatefulWidget {
  @override
  _HomeScreState createState() => _HomeScreState();
}

class _HomeScreState extends State<HomeScre> {

   int selectedIndex = 0;
  final screen = [Home(), Message(), Card(), Profile()];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        iconTheme: IconThemeData(color: Colors.white),
  actions: <Widget>[
    Padding(
      padding: EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
                        backgroundImage: NetworkImage("https://i.pinimg.com/originals/72/4a/62/724a62097d733bd32f2160808cf33362.jpg"),
                    radius: 20,
                      ),
      )
    ),
  ],
      ),
     bottomNavigationBar: CurvedNavigationBar(
       index: selectedIndex,
       key: NavbarKey.getKey(),
        height: 50,
       items: [
         Icon(Icons.home, size: 30),
         Icon(Icons.message, size: 30),
         Icon(Icons.shopping_cart, size: 30),
         Icon(Icons.person, size: 30),
       ],
       color: Colors.red[600],
            buttonBackgroundColor: Colors.grey[400],
            backgroundColor: Colors.white,
       onTap: (index){
         setState(() {
            selectedIndex = index;
         });
       },
       animationCurve: Curves.easeInBack,
       animationDuration: const Duration(milliseconds: 300),
     ),
     body: screen[selectedIndex],
    );
    }

}