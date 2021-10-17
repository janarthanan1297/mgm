import 'package:flutter/material.dart';
import 'package:mgm_patient/resource/color.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: secondary,
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Login to Continue',
                    style: TextStyle(
                      color: secondary,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  Divider(
                    thickness: 3,
                    color: secondary,
                    indent: 170,
                    endIndent: 170,
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: primary,
            child: Container(
              height: 600,
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: secondary),
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Icon(
                        Icons.person,
                        color: primary,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: email,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Your username",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: secondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: secondary,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: secondary),
                  ),
                  Row(
                    children: [
                      Flexible(
                          child: Icon(
                        Icons.lock,
                        color: primary,
                      )),
                      SizedBox(
                        width: 20,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: secondary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1,
                    color: secondary,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      TextButton(
                          onPressed: null,
                          child: Text(
                            'keep me sign in?',
                            style: TextStyle(fontSize: 16, color: Color(0xff6d6487)),
                          )),
                      Spacer(),
                      TextButton(
                          onPressed: null,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 16, color: Color(0xff6d6487)),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: secondary),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(fontSize: 16, color: Color(0xff6d6487), fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: null,
                          child: Text(
                            'Register here',
                            style: TextStyle(
                              fontSize: 16,
                              color: secondary,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ],
                  ),
                  Center(
                    child: Text(
                      '- - - or - - -',
                      style: TextStyle(fontSize: 14, color: Color(0xff6d6487).withOpacity(.8)),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text('continue', style: TextStyle(fontSize: 16, color: Color(0xff6d6487).withOpacity(.8))),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color: secondary,
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
