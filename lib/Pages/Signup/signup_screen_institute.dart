import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:uniplace2/Widgets/rounded_input_field.dart';
import 'package:uniplace2/Widgets/rounded_password_field.dart';

import '../../Widgets/rounded_button.dart';

class SignUpInstitute extends StatefulWidget {
  const SignUpInstitute({Key? key}) : super(key: key);

  @override
  State<SignUpInstitute> createState() => _SignUpInstituteState();
}

class _SignUpInstituteState extends State<SignUpInstitute> {
  List<CoolStep> getSteps() => [
        CoolStep(
            title: "Basic Info 1",
            subtitle:
                "Please fill some of the basic information to get started",
            content: Center(
              child: Column(
                children: <Widget>[
                  RoundedInputField(
                    hintText: "Email",
                    onChanged: (value) => {},
                    icon: Icons.email,
                  ),
                  RoundedInputField(
                      hintText: "Username",
                      onChanged: (value) => {},
                      icon: Icons.person),
                  RoundedPasswordField(
                    hintText: "Password",
                    onChanged: (value) => {},
                  ),
                  RoundedInputField(
                    hintText: "Confirm Password",
                    onChanged: (value) => {},
                    icon: Icons.lock,
                  ),
                ],
              ),
            ),
            validation: () {
              return null;
            }),
        CoolStep(
            title: "Baisc Info 2",
            subtitle:
                "Please fill some of the basic information to get started",
            content: Center(
              child: Column(
                children: <Widget>[
                  RoundedInputField(
                      hintText: "Institute Name",
                      onChanged: (value) => {},
                      icon: Icons.email),
                  RoundedInputField(
                      hintText: "Address",
                      onChanged: (value) => {},
                      icon: Icons.email),
                  RoundedInputField(
                      hintText: "Contact",
                      onChanged: (value) => {},
                      icon: Icons.email),
                ],
              ),
            ),
            validation: () {
              return null;
            }),
        CoolStep(
            title: "Image Upload",
            subtitle: "Logo upload here",
            content: Container(),
            validation: () {
              return null;
            }),
        CoolStep(
            title: "Program Addition",
            subtitle: "Add programs here",
            content: Container(),
            validation: () {
              return null;
            }),
      ];

  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    int dotCount = 4;
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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: size.width * 0.4),
                child: CoolStepper(
                    showErrorSnackbar: false,
                    steps: getSteps(),
                    onCompleted: () {
                      //server data sending
                      //print("Complete");
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
