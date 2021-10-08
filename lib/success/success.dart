import 'package:e_commerce/constant.dart';
import 'package:e_commerce/widgets/emptySection.dart';
import 'package:e_commerce/widgets/subTitle.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  Success({Key key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(
            emptyImg: success,
            emptyMsg: 'Successful !!',
          ),
          SubTitle(
            subTitleText: 'Your payment was done successfully',
          ),
        ],
      ),
    );
  }
}
