import 'package:flutter/material.dart';
import 'package:uee_souji/pages/signin.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Text("Sign Up",
                  style: TextStyle(
                    color: Colors.red.shade600,
                    fontSize: 15,
                  )),
              margin: EdgeInsets.only(top: 25, left: 280),
            ),
            Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: globalFormKey,
                    child: Column(children: <Widget>[
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
                      SizedBox(height: 40),
                      Container(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey.shade500,
                          radius: 60,
                          child: Icon(Icons.ad_units_sharp,
                              color: Colors.white, size: 90),
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            ),
                            new TextFormField(
                              keyboardType: TextInputType.name,
                              cursorColor: Colors.black,
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red.shade600)),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            ),
                            new TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.black,
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red.shade600)),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            ),
                            new TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.text,
                              cursorColor: Colors.black,
                              obscureText: hidePassword,
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red.shade600)),
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
                            SizedBox(height: 40),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 110.0, vertical: 12.0),

                                primary: Colors.red.shade600, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()),
                                );
                              },
                              child: Text('SIGN UP'),
                            ),
                          ]),
                    ]),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        InkWell(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.red.shade600,
                                fontSize: 15,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignInPage()),
                              );
                            })
                      ]),
                ),
              ],
            ),
          ]),
        ));
  }
}
