import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/card/checkout.dart';
import 'package:shop_app/screens/details/components/counter_with_fav_btn.dart';

import '../../constants.dart';
import '../../sizes.dart';

class ShoppingCart  extends StatelessWidget {
  // const ({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              color: Color(0xFFC02E33),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Container(
          height: displayHeight(context),
          child: Column(
            children: <Widget>[
              Expanded(
                child: LayoutBuilder(builder: (context, constrains) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Container(
                              height: (displayHeight(context) -
                                      MediaQuery.of(context).padding.top -
                                      kToolbarHeight -
                                      kBottomNavigationBarHeight) *
                                  .8668,
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      height: (displayHeight(context) -
                                              MediaQuery.of(context)
                                                  .padding
                                                  .top -
                                              kToolbarHeight -
                                              kBottomNavigationBarHeight) *
                                          .180,
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Image.network(
                                                'https://i.ibb.co/Wk1PJ2R/bag-1.png'),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        // products[index].pName,
                                                        'Aristocratic Bag',

                                                        style: TextStyle(
                                                            fontSize:
                                                                displayWidth(
                                                                        context) *
                                                                    0.035,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height: (displayHeight(
                                                                    context) -
                                                                MediaQuery.of(
                                                                        context)
                                                                    .padding
                                                                    .top -
                                                                kToolbarHeight -
                                                                kBottomNavigationBarHeight) *
                                                            .020,
                                                      ),
                                                      Text(
                                                        '\Rs 4500  /=',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(
                                                        height: (displayHeight(
                                                                    context) -
                                                                MediaQuery.of(
                                                                        context)
                                                                    .padding
                                                                    .top -
                                                                kToolbarHeight -
                                                                kBottomNavigationBarHeight) *
                                                            .020,
                                                      ),
                                                      CounterWithFavBtn(),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          12.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      12.0))),
                                                  height: (displayHeight(
                                                              context) -
                                                          MediaQuery.of(context)
                                                              .padding
                                                              .top -
                                                          kToolbarHeight -
                                                          kBottomNavigationBarHeight) *
                                                      .180,
                                                  child: IconButton(
                                                    icon: Icon(Icons.delete),
                                                    color: Colors.white,
                                                    iconSize: 28,
                                                    onPressed: () {
                                                      // Provider.of<CartItem>(
                                                      //         context,
                                                      //         listen: false)
                                                      //     .deleteProduct(
                                                      //         products[
                                                      //             index]);
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey[300],
                                                offset: Offset(1, 1),
                                                blurRadius: 4)
                                          ],
                                          borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topRight: Radius.circular(12.0))),
                                    ),
                                  );
                                },
                                itemCount: 1,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: displayHeight(context) * 0.20,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        children: [
                                          Text("Totals",
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.048)),
                                          Spacer(),
                                          // DropdownButton(
                                          //   hint: Text(
                                          //     'Available District',
                                          //     textAlign: TextAlign.end,
                                          //   ), // Not necessary for Option 1
                                          //   value: _selectedLocation,

                                          //   onChanged: (newValue) {
                                          //     setState(() {
                                          //       _selectedLocation = newValue;
                                          //     });
                                          //   },
                                          //   items: _locations.map((location) {
                                          //     return DropdownMenuItem(
                                          //       child: new Text(location),
                                          //       value: location,
                                          //     );
                                          //   }).toList(),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Text("Subtotal:",
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.030)),
                                          Spacer(),
                                          Text(
                                              'Rs ' +
                                                  // getTotallPrice(products)
                                                  // .toString() +
                                                  "4,500/=",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.030))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Text("Shipping Fee:",
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.030)),
                                          Spacer(),
                                          Text(
                                              'Rs ' +
                                                  // getDeliveryFee(
                                                  // _selectedLocation)
                                                  // .toString() +
                                                  "500/=",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.030))
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Text("Total:",
                                              textAlign: TextAlign.center,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.048)),
                                          Spacer(),
                                          Text(
                                              'Rs ' +
                                                  // (getTotallPrice(products) +
                                                  //         getDeliveryFee(
                                                  //             _selectedLocation))
                                                  //     .toString() +
                                                  "5,000/=",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize:
                                                      displayWidth(context) *
                                                          0.038))
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: displayHeight(context) * 0.02,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(top: 0.0),
                                        child: Builder(
                                          builder: (context) => ButtonTheme(
                                            minWidth: screenWidth,
                                            height:
                                                displayHeight(context) * .250,
                                            child: RaisedButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight: Radius
                                                              .circular(20),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  20),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  20))),
                                              onPressed: () {
                                                // if (_selectedLocation ==
                                                //     null) {
                                                //   _deliverfailed();
                                                // } else {
                                                //   showCustomDialog(
                                                //       products, context);
                                                // }
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Checkout(),
                                                    ));
                                              },
                                              child: Text(
                                                  'Checkout'.toUpperCase()),
                                              color: Color(0xFFC02E33),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

