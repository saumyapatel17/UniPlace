import 'package:flutter/material.dart';
import 'package:uniplace2/constants.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  const InputField({required this.hintText, required this.onChanged, Key? key})
      : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      child: TextField(
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2)),
        ),
      ),
    );
  }
}
