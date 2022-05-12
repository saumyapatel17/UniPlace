import 'package:flutter/material.dart';
import 'package:uniplace2/constants.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: "Good Morning,\n",
              style: TextStyle(
                color: Colors.black,
                fontSize: 40,
              )),
          TextSpan(
            text: "JKLU",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          )
        ]),
      ),
    );
  }
}
