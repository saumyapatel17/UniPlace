import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Home/Widgets/home_std_content.dart';
import 'package:uniplace2/Widgets/bottom_nav_bar2.dart';
import '../../../../Common/home_header.dart';
import '../../../../Common/home_subheader.dart';

class HomeStd extends StatefulWidget {
  final tabindex = 0;
  const HomeStd({required tabindex, Key? key}) : super(key: key);

  @override
  State<HomeStd> createState() => _HomeStdState();
}

class _HomeStdState extends State<HomeStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            HomeHeader(),
            SizedBox(
              height: 30,
            ),
            HomeSubheader(),
            SizedBox(
              height: 30,
            ),
            HomeStdContent()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar2(
        selectedIndex: widget.tabindex,
      ),
    );
  }
}
