import 'package:flutter/material.dart';
import 'package:uee_souji/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
     
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'UEE',
          theme: ThemeData.light(),
      home: SignUpPage(),
    );
  }
}


