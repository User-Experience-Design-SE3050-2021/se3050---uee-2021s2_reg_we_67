import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class AddToCart1 extends StatelessWidget {
  const AddToCart1({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          SizedBox(width: kDefaultPaddin / 2),
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 208,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {},
                child: Text(
                  "Add To Cart".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
