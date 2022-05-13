import 'package:cool_stepper/cool_stepper.dart';
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:uniplace2/Pages/Signup/Widgets/gender_raido.dart';
import 'package:uniplace2/Widgets/date_picker.dart';
import 'package:uniplace2/Widgets/rounded_input_field.dart';
import 'package:uniplace2/Widgets/rounded_password_field.dart';
import 'package:uniplace2/Widgets/search_widget.dart';

import '../../Widgets/dropdown_menu.dart';
import '../../Widgets/rounded_button.dart';

class SignUpStd extends StatefulWidget {
  const SignUpStd({Key? key}) : super(key: key);

  @override
  State<SignUpStd> createState() => _SignUpStdState();
}

class _SignUpStdState extends State<SignUpStd> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController contactcontroller = TextEditingController();
  String query = "";
  List<CoolStep> getSteps() => [
        CoolStep(
            title: "Institute",
            subtitle:
                "Please fill some of the basic information to get started",
            content: Center(
                child: SearchWidget(
              hintText: "Search for Institute",
              text: query,
              onChanged: (value) {},
            )),
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
                    hintText: "Email",
                    controller: emailcontroller,
                    onChanged: (value) => {},
                    icon: Icons.email,
                  ),
                  RoundedInputField(
                      controller: usernamecontroller,
                      hintText: "Username",
                      onChanged: (value) => {},
                      icon: Icons.person),
                  RoundedPasswordField(
                    controller: passwordcontroller,
                    hintText: "Password",
                    onChanged: (value) => {},
                  ),
                  RoundedPasswordField(
                    controller: confirmpasswordcontroller,
                    hintText: "Confirm Password",
                    onChanged: (value) => {},
                  ),
                ],
              ),
            ),
            validation: () {
              return null;
            }),
        CoolStep(
            title: "Baisc Info 3",
            subtitle:
                "Please fill some of the basic information to get started",
            content: Center(
              child: Column(
                children: <Widget>[
                  RoundedInputField(
                    controller: namecontroller,
                    hintText: "Name",
                    onChanged: (value) => {},
                    icon: Icons.abc,
                  ),
                  DateField(
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      lastDate: DateTime.now(),
                      hintText: "DOB"),
                  GenderRadio(),
                  RoundedInputField(
                    controller: contactcontroller,
                    hintText: "Contact",
                    onChanged: (value) => {},
                    icon: Icons.call,
                  ),
                ],
              ),
            ),
            validation: () {
              return null;
            }),
        CoolStep(
            title: "Program Addition",
            subtitle: "Add programs here",
            content: Center(child: DropdownMenu()),
            validation: () {
              return null;
            }),
      ];

  int activeStep = 0;
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
