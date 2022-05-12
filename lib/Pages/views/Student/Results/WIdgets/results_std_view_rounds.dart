import 'package:flutter/material.dart';

class ResultsStdViewRounds extends StatelessWidget {
  const ResultsStdViewRounds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Round 1"),
          SizedBox(
            height: 20,
          ),
          Text("Cleared/Not Cleared")
        ]),
      ),
    );
  }
}
