import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Application/WIdgets/ApplicationStdInfoCard.dart';
import 'package:uniplace2/Widgets/bottom_nav_bar2.dart';
import 'package:uniplace2/Widgets/pages_header.dart';
import 'package:uniplace2/Widgets/search_bar.dart';

import '../../../../Widgets/search_widget.dart';

class ApplicationStd extends StatefulWidget {
  const ApplicationStd({Key? key}) : super(key: key);

  @override
  State<ApplicationStd> createState() => _ApplicationStdState();
}

class _ApplicationStdState extends State<ApplicationStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("My Applications"),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications),
            tooltip: "Settings",
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
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
                ApplicationStdCard(),
                ApplicationStdCard(),
                ApplicationStdCard(),
                ApplicationStdCard(),
                ApplicationStdCard(),
                ApplicationStdCard(),
                ApplicationStdCard(),
              ],
            ),
          ))
        ],
      )),
      bottomNavigationBar: BottomNavBar2(selectedIndex: 2),
    );
  }
}
