import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Widgets/rounded_button.dart';
import '../../../../Common/home_header.dart';
import '../../../../Common/home_subheader.dart';
import '../../../../Common/search_control.dart';

class HomePA extends StatelessWidget {
  const HomePA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            HomeHeader(),
            SizedBox(
              height: 30,
            ),
            HomeSubheader(),
            SizedBox(
              height: 30,
            ),
            RoundedButton(
                text: "Log out",
                press: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.pop(context);
                  });
                },
                Width: 200)
          ],
        ),
      ),
    );
  }
}
