import 'package:flutter/material.dart';

class CompanyStdRequirementCard extends StatelessWidget {
  const CompanyStdRequirementCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 150,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.green.shade200,
      child: Column(children: [Text("Experience"), Text("5 years")]),
    );
  }
}
