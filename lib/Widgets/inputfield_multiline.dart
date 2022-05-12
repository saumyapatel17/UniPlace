import 'package:flutter/material.dart';

import '../constants.dart';

class InputFieldMultiline extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const InputFieldMultiline(
      {required this.hintText, required this.onChanged, Key? key})
      : super(key: key);

  @override
  State<InputFieldMultiline> createState() => _InputFieldMultilineState();
}

class _InputFieldMultilineState extends State<InputFieldMultiline> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      child: TextField(
        maxLines: 10,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
            hintText: widget.hintText,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            )),
      ),
    );
  }
}
