import 'package:flutter/material.dart';

class CompanyStdJobDetails extends StatelessWidget {
  const CompanyStdJobDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("About the job"),
          SizedBox(
            height: 20,
          ),
          Text("1. Item 1"),
          Text("1. Item 1"),
          Text("1. Item 1"),
          Text("1. Item 1"),
          Text("1. Item 1"),
          Text("1. Item 1"),
        ]),
      ),
    );
  }
}
