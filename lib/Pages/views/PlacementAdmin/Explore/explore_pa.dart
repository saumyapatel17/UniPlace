import 'package:flutter/material.dart';

import '../../../../Widgets/bottom_nav_bar2.dart';
import '../../../../Widgets/search_widget.dart';
import 'Widgets/explore_pa_jobcard.dart';

class ExplorePA extends StatefulWidget {
  final tabindex = 1;
  const ExplorePA({Key? key}) : super(key: key);

  @override
  State<ExplorePA> createState() => _ExplorePAState();
}

class _ExplorePAState extends State<ExplorePA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Jobs"),
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
                      ExplorePAJobCard(),
                      ExplorePAJobCard(),
                      ExplorePAJobCard(),
                      ExplorePAJobCard(),
                      ExplorePAJobCard(),
                      ExplorePAJobCard(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
            // shape:
            //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () => {},
            child: Icon(
              Icons.add_rounded,
              size: 25,
            )),
      ),
      bottomNavigationBar: BottomNavBar2(
        selectedIndex: widget.tabindex,
      ),
    );
  }
}
