import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  final Function press;
  final double Width;

  const RoundedButton({
    Key? key,
    required this.text,
    required this.press,
    required this.Width,
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
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
            onPressed: () {
              widget.press();
            },
            style: ButtonStyle(
              backgroundColor: kRoundedButtonBGC,
              foregroundColor: kRoundedButtonFGC,
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
            )),
      ),
    );
  }
}
