import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/rounded_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../Widgets/rounded_input_field.dart';
import '../../../Widgets/rounded_password_field.dart';
import '../../../Widgets/already_have_an_account_check.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String password = "";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    height: size.height * 0.25,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    controller: _emailController,
                    hintText: "Your Email",
                    onChanged: (value) {},
                    icon: Icons.email,
                  ),
                  RoundedPasswordField(
                    controller: _passwordController,
                    hintText: "Password",
                    onChanged: (value) {
                      setState(() {
                        password = value;
                        print(password);
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                            onTap: () {}, child: Text("Forgot Password?"))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {
                      print(_emailController.text);
                      print(password);
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: _emailController.text, password: password)
                          .then((value) => {
                                print("logging in"),
                                Navigator.pushNamed(context, '/instituteHome')
                                    .onError((error, stackTrace) {
                                  print("Error ${error.toString()}");
                                })
                              });
                    },
                    Width: size.width * 0.45,
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
