import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../constants.dart';

class DateField extends StatefulWidget {
  DateTime initialDate, firstDate, lastDate;
  String hintText;
  DateField(
      {required this.initialDate,
      required this.firstDate,
      required this.lastDate,
      required this.hintText,
      Key? key})
      : super(key: key);

  @override
  State<DateField> createState() => _DateFieldState();
}

class _DateFieldState extends State<DateField> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

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
        controller: dateinput,
        readOnly: true,
        cursorColor: kPrimaryColor,
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
              context: context,
              initialDate: widget.initialDate,
              firstDate: widget.firstDate,
              lastDate: widget.lastDate);

          if (pickedDate != null) {
            String formattedDate = DateFormat('dd-MM-yyyy').format(
                pickedDate); //formatted date output using intl package =>  2021-03-16
            //you can implement different kind of Date Format here according to your requirement

            setState(() {
              dateinput.text =
                  formattedDate; //set output date to TextField value.
            });
          }
        },
        decoration: InputDecoration(
          icon: Icon(
            Icons.event,
            color: kPrimaryColor,
          ),
          hintText: widget.hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
