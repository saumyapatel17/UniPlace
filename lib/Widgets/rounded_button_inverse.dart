import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButtonInverse extends StatefulWidget {
  final String text;
  final Function press;
  final double Width;
  const RoundedButtonInverse(
      {required this.text, required this.press, required this.Width, Key? key})
      : super(key: key);

  @override
  State<RoundedButtonInverse> createState() => _RoundedButtonInverseState();
}

class _RoundedButtonInverseState extends State<RoundedButtonInverse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: widget.Width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            child: Text(
              widget.text,
              style: kRoundedButtonTextStyle,
            ),
            onPressed: widget.press(),
            style: ButtonStyle(
              backgroundColor: kRoundedButtonFGC,
              foregroundColor: kRoundedButtonBGC,
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
            )),
      ),
    );
  }
}
