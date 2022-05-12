import 'package:flutter/material.dart';
import 'package:uniplace2/constants.dart';

class StatCard extends StatelessWidget {
  const StatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        padding: EdgeInsets.all(15),
        width: 150,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white,
                offset: Offset(4.0, 4.0),
                blurRadius: 10,
              )
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "245",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
            Text("Jobs Applied")
          ],
        ),
      ),
    );
  }
}
