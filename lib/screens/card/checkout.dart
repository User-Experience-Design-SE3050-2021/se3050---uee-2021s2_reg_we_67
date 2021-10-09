import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/add_to_cart.dart';
import 'package:shop_app/sizes.dart';

enum SingingCharacter { lafayette, jefferson }

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Checkout',
            style: TextStyle(
              color: Color(0xFFC02E33),
            ),
          ),
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
                  child: Container(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: new LinearPercentIndicator(
                            width: MediaQuery.of(context).size.width - 50,
                            animation: true,
                            lineHeight: 20.0,
                            animationDuration: 2500,
                            percent: 0.25,
                            center: Text("20.0%"),
                            linearStrokeCap: LinearStrokeCap.roundAll,
                            progressColor: Color(0xFFC02E33),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 40.0, right: 25, top: 25.0, bottom: 25.0),
                          child: Row(
                            children: [
                              Expanded(child: Text('Address')),
                              Expanded(child: Text('Payment')),
                              Expanded(child: Text('Summary'))
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListTile(
                      title: const Text('Billing Address Same as Delivery'),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration:
                                  InputDecoration(labelText: 'Street 1'),
                              onChanged: (text) {
                                // do something with text
                              },
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration:
                                  InputDecoration(labelText: 'Street 2'),
                              onChanged: (text) {
                                // do something with text
                              },
                            ),
                            SizedBox(height: 20),
                            TextField(
                              decoration: InputDecoration(labelText: 'City'),
                              onChanged: (text) {
                                // do something with text
                              },
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: TextField(
                                  decoration:
                                      InputDecoration(labelText: 'State'),
                                  onChanged: (text) {
                                    // do something with text
                                  },
                                )),
                                SizedBox(width: 10),
                                Expanded(
                                    child: TextField(
                                  decoration:
                                      InputDecoration(labelText: 'Country'),
                                  onChanged: (text) {
                                    // do something with text
                                  },
                                )),

                                // OtherWidget(),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                      child: Text(
                                          "       BACK       ".toUpperCase(),
                                          style: TextStyle(fontSize: 14)),
                                      style: ButtonStyle(
                                          padding:
                                              MaterialStateProperty.all<EdgeInsets>(
                                                  EdgeInsets.all(15)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color(0xFFC02E33)),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(18.0),
                                                  side: BorderSide(color: Color(0xFFC02E33))))),
                                      onPressed: () => Navigator.pop(context)),
                                  SizedBox(width: 10),
                                  ElevatedButton(
                                      child: Text("       NEXT      ".toUpperCase(),
                                          style: TextStyle(fontSize: 14)),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(15)),
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Color(0xFFC02E33)),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(18.0),
                                                  side: BorderSide(color: Color(0xFFC02E33))))),
                                      onPressed: () => null)
                                ])
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
