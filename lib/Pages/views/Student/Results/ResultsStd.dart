import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Results/WIdgets/results_std_card.dart';

import '../../../../Widgets/bottom_nav_bar2.dart';
import '../../../../Widgets/pages_header.dart';
import '../../../../Widgets/search_bar.dart';
import '../../../../Widgets/search_widget.dart';

class ResultsStd extends StatefulWidget {
  const ResultsStd({Key? key}) : super(key: key);

  @override
  State<ResultsStd> createState() => _ResultsStdState();
}

class _ResultsStdState extends State<ResultsStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
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
            height: 10,
          ),
          SearchWidget(
              text: "Hello",
              onChanged: (val) {},
              hintText: "Job Title or Company Name"),
          SizedBox(
            height: 30,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                ResultsStdCard(),
                ResultsStdCard(),
                ResultsStdCard(),
                ResultsStdCard(),
                ResultsStdCard(),
                ResultsStdCard(),
                ResultsStdCard(),
              ],
            ),
          ))
        ],
      )),
      bottomNavigationBar: BottomNavBar2(selectedIndex: 3),
    );
  }
}
