import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shoe extends StatefulWidget {
  @override
  _ShoeState createState() => _ShoeState();
}

class _ShoeState extends State<Shoe> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Shoe'),
    );
  }
}