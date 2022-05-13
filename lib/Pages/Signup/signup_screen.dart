import 'package:flutter/material.dart';

import '../../Widgets/rounded_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: size.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.4,
              ),
            ),
            Container(
              child: SingleChildScrollView(
                  child: Column(
                children: <Widget>[
                  Text("Who are You?"),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  RoundedButton(
                    text: "Institute",
                    press: () {
                      Navigator.pushReplacementNamed(context, "/institute");
                    },
                    Width: size.width * 0.5,
                  ),
                  RoundedButton(
                    text: "Student",
                    press: () {
                      Navigator.pushReplacementNamed(context, "/student");
                    },
                    Width: size.width * 0.5,
                  ),
                  // RoundedButton(
                  //   text: "Faculty",
                  //   press: () {},
                  //   Width: size.width * 0.5,
                  // ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
