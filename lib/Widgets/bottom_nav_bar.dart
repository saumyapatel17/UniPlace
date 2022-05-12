import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  final int index;
  const BottomNavBar({required this.index, Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final items = <Widget>[
    Column(
      children: [
        Icon(
          Icons.home,
          size: 30,
        ),
        Text("Home")
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.add_rounded,
          size: 30,
        ),
        Text("Opportunity")
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.business_center_rounded,
          size: 30,
        ),
        Text("Applications")
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.notifications,
          size: 30,
        ),
        Text("Results")
      ],
    ),
    Column(
      children: [
        Icon(
          Icons.person_rounded,
          size: 30,
        ),
        Text("Profile")
      ],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: items,
    );
  }
}
