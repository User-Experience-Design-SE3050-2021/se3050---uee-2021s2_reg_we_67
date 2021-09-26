import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:uee_souji/pages/phonenumberverification.dart';
import 'package:uee_souji/pages/signup.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  void _showButtonPressDialog(BuildContext context, String provider) {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: Colors.red[200],
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/images/logowhite.png'),
                        width: 180,
                        height: 180,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Theme.of(context).hintColor.withOpacity(0.2),
                      offset: Offset(0, 10),
                      blurRadius: 20)
                ],
              ),
              child: Form(
                key: globalFormKey,
                child: Column(children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Sign in to get started and experience",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "great shopping deals",
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(height: 20),
                  new TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: Colors.black,
                    decoration: new InputDecoration(
                      hintText: "Email Address",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.2))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red.shade600)),
                    ),
                  ),
                  SizedBox(height: 10),
                  new TextFormField(
                    style: TextStyle(color: Colors.black),
                    keyboardType: TextInputType.text,
                    cursorColor: Colors.black,
                    obscureText: hidePassword,
                    decoration: new InputDecoration(
                      hintText: "Password",
                      enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.2))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red.shade600)),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hidePassword = !hidePassword;
                          });
                        },
                        color: Colors.red.shade600.withOpacity(0.4),
                        icon: Icon(hidePassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 110.0, vertical: 12.0),

                      primary: Colors.red[600], // background
                      onPrimary: Colors.white, // foreground
                    ),
                    onPressed: () {},
                    child: Text('SIGN IN'),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 15),
            Text(
              '- OR -',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 15),
            Container(
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.call_outlined,
                  color: Colors.green,
                  size: 24.0,
                ),
                label: Text('Sign in with Phone Number'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Phoneverify()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),

                  primary: Colors.white, // background
                  onPrimary: Colors.black, // foreground
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: SignInButton(
                Buttons.Facebook,
                onPressed: () {
                  _showButtonPressDialog(context, 'Facebook');
                },
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 42.0, vertical: 18.0),
              ),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              child: SignInButton(
                Buttons.Google,
                onPressed: () {
                  _showButtonPressDialog(context, 'Google');
                },
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 42.0, vertical: 1.0),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                    InkWell(
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Colors.red.shade600,
                            fontSize: 13,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()),
                          );
                        })
                  ]),
            ),
          ],
        )));
  }
}
