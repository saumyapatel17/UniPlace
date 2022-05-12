import 'package:flutter/material.dart';

import '../../../constants.dart';

class GenderRadio extends StatefulWidget {
  const GenderRadio({Key? key}) : super(key: key);

  @override
  State<GenderRadio> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Gender"),
          Row(
            children: [
              Radio(
                value: "male",
                groupValue: "",
                onChanged: (value) {},
                activeColor: kPrimaryColor,
                fillColor: kRoundedButtonBGC,
              ),
              Text("Male")
            ],
          ),
          Row(
            children: [
              Radio(
                value: "female",
                groupValue: "",
                onChanged: (value) {},
                activeColor: kPrimaryColor,
                fillColor: kRoundedButtonBGC,
              ),
              Text("Female")
            ],
          ),
          Row(
            children: [
              Radio(
                value: "other",
                groupValue: "",
                onChanged: (value) {},
                activeColor: kPrimaryColor,
                fillColor: kRoundedButtonBGC,
              ),
              Text("Other")
            ],
          )
        ],
      ),
    );
  }
}
