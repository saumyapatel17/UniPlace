import 'package:flutter/material.dart';
import '../constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  final TextEditingController controller;
  const RoundedPasswordField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool hidden = true;
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
      child: TextField(
        obscureText: hidden == true ? true : false,
        onChanged: widget.onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: hidden == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      hidden = false;
                    });
                  },
                  child: Icon(
                    Icons.visibility_off,
                    color: kPrimaryColor,
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    setState(() {
                      hidden = true;
                    });
                  },
                  child: Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                  ),
                ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
