import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Explore/Widgets/explore_std_jobcard.dart';
import 'package:uniplace2/Widgets/bottom_nav_bar2.dart';
import 'package:uniplace2/Widgets/search_widget.dart';

class ExploreStd extends StatefulWidget {
  final tabindex = 1;
  const ExploreStd({Key? key}) : super(key: key);

  @override
  State<ExploreStd> createState() => _ExploreStdState();
}

class _ExploreStdState extends State<ExploreStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Job Explorer"),
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                    ExploreStdJobCard(),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavBar2(
        selectedIndex: widget.tabindex,
      ),
    );
  }
}
