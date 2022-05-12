import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Results/WIdgets/results_std_view_assessment.dart';
import 'package:uniplace2/Pages/views/Student/Results/WIdgets/results_std_view_info.dart';
import 'package:uniplace2/Pages/views/Student/Results/WIdgets/results_std_view_rounds.dart';

import '../../../../Widgets/bottom_nav_bar2.dart';
import '../../../../Widgets/pages_header.dart';

class ResultsStdView extends StatelessWidget {
  const ResultsStdView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Result"),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications),
            tooltip: "Settings",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ResultsStdViewInfo(),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            child: Text("Status: Cleared"),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ResultsStdViewRounds(),
                ResultsStdViewRounds(),
                ResultsStdViewRounds(),
                ResultsStdViewRounds(),
                ResultsStdViewAssessment()
              ],
            ),
          ))
        ],
      )),
      bottomNavigationBar: BottomNavBar2(selectedIndex: 3),
    );
  }
}
