import 'package:flutter/material.dart';
import 'package:uee_souji/pages/signin.dart';
import 'package:uee_souji/service/user_register_service.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final unameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String message = '';

  @override
  void dispose() {
    unameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            Container(
              child: Text("Sign up",
                  style: TextStyle(
                    color: Colors.red.shade600,
                    fontSize: 14,
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
                      SizedBox(height: 5),
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
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.name,
                              cursorColor: Colors.black,
                              /*  onSaved */
                              controller: unameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Username cannot be empty';
                                }
                                return null;
                              },
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red.shade600)),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.grey.shade500,
                                fontSize: 15,
                              ),
                            ),
                            new TextFormField(
                              style: TextStyle(color: Colors.black),
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Colors.black,
                              /*  onSaved */
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Email Address cannot be empty';
                                }
                                return null;
                              },
                              decoration: new InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey.withOpacity(0.2))),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.red.shade600)),
                              ),
                            ),
                            SizedBox(height: 8),
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
                              /*  onSaved */
                              controller: passwordController,
                              validator: (value) {
                                if (value!.length < 6) {
                                  return 'Password should be more than 6 characters';
                                }
                                return null;
                              },
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
                            SizedBox(height: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 100.0, vertical: 12.0),

                                primary: Colors.red.shade600, // background
                                onPrimary: Colors.white, // foreground
                              ),
                              onPressed: () async {
                                if (globalFormKey.currentState!.validate()) {
                                  var username = unameController.text;
                                  var email = emailController.text;
                                  var password = passwordController.text;

                                  setState(() {
                                    message = 'Please wait...';
                                  });
                                  var rsp =
                                      await register(username, email, password);
                                  print(rsp);
                                  if (rsp.containsKey('status')) {
                                    setState(() {
                                      message = rsp['status'];
                                    });
                                    if (rsp['status'] == 1) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignInPage()),
                                      );
                                    }
                                  } else {
                                    setState(() {
                                      message = 'Registration Failed';
                                    });
                                  }
                                }
                              },
                              child: Text('SIGN UP'),
                            ),
                          ]),
                    ]),
                  ),
                ),
                SizedBox(height: 10),
                Text(message),
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        InkWell(
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                color: Colors.red.shade600,
                                fontSize: 13,
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
