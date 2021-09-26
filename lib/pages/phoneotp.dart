import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  final String phone;
  Otp(this.phone);
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String text = '';
  Widget otpNumberWidget(int position) {
    try {
      return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,

                offset: Offset(0, 0), // changes position of shadow
              ),
            ]),
        child: Center(
            child: Text(
          text[position],
          style: TextStyle(color: Colors.black),
        )),
      );
    } catch (e) {
      return Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,

                offset: Offset(0, 0), // changes position of shadow
              ),
            ]),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                'We have sent an OTP to',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.4),
            child: Center(
              child: Text(
                'your mobile',
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            child: Center(
              child: Text(
                'Please check your mobile number +94-${widget.phone}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 0.6),
            child: Center(
              child: Text(
                'continue to reset your password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ),
          ),
          SizedBox(height: 35),
          Container(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                otpNumberWidget(0),
                otpNumberWidget(1),
                otpNumberWidget(2),
                otpNumberWidget(3),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    EdgeInsets.symmetric(horizontal: 110.0, vertical: 18.0),

                primary: Colors.red.shade600, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {},
              child: Text('Continue'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 90, right: 21.5),
            child: Row(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Text(
                      "Didn't Receive?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey[500]),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                InkWell(
                  onTap: () {},
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Resend OTP',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.red[500]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
