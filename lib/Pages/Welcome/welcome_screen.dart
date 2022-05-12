import 'package:flutter/material.dart';
import '../../Widgets/rounded_button.dart';
import '../../Widgets/rounded_button_inverse.dart';
import '../../constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.4,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * 0.25,
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "WELCOME",
                      style: kWelcomeTextStyle,
                    ),
                    SizedBox(height: size.height * 0.05),
                    Container(
                      height: 250.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                    ),
                    SizedBox(height: size.height * 0.05),
                    RoundedButtonInverse(
                        text: "LOGIN",
                        Width: size.width * 0.45,
                        press: () {
                          print("1");

                          Navigator.pushNamed(context, "/login");
                        }),
                    RoundedButton(
                      text: "SIGN UP",
                      Width: size.width * 0.45,
                      press: () {
                        print("2");
                        Navigator.pushNamed(context, "/signup");
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
