import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:uee_souji/pages/phoneotp.dart';

class Phoneverify extends StatefulWidget {
  @override
  _PhoneverifyState createState() => _PhoneverifyState();
}

class _PhoneverifyState extends State<Phoneverify> {
  bool valuefirst = false;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image(
                            image: AssetImage('assets/images/logos.png'),
                            width: 200,
                            height: 80,
                            fit: BoxFit.fill),
                      ),
                    ]),
                SizedBox(height: 80),
                Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade500,
                    radius: 60,
                    child: Icon(Icons.ad_units_sharp,
                        color: Colors.white, size: 90),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 150),
          Container(
            margin: EdgeInsets.only(right: 170),
            child: Text(
              "My number is",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: IntlPhoneField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 255, 3, 69))),
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 255, 3, 69)),
                    )),

                initialCountryCode: 'SL',
                //default contry code, NP for Nepal
                onChanged: (phone) {
                  print(phone.completeNumber); //get complete number
                  print(phone.countryCode); // get country code only
                  print(phone.number); // only phone number
                },
              )),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 100.0, vertical: 12.0),

                primary: Colors.red.shade600, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Otp(_controller.text)));
              },
              child: Text('SIGN IN'),
            ),
          ),
        ]),
      ),
    );
  }
}
