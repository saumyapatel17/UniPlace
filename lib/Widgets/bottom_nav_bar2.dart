import 'dart:ui';

import 'package:flutter/material.dart';

class BottomNavBar2 extends StatefulWidget {
  int selectedIndex;
  BottomNavBar2({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<BottomNavBar2> createState() => _BottomNavBar2State();
}

class _BottomNavBar2State extends State<BottomNavBar2> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconBottomBar(
                  text: "Home",
                  icon: Icons.home,
                  selected: widget.selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 0;
                    });
                  }),
              IconBottomBar(
                  text: "Opportunity",
                  icon: Icons.add_rounded,
                  selected: widget.selectedIndex == 1,
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 1;
                    });
                  }),
              IconBottomBar(
                  text: "Application",
                  icon: Icons.business_center_rounded,
                  selected: widget.selectedIndex == 2,
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 2;
                    });
                  }),
              IconBottomBar(
                  text: "Result",
                  icon: Icons.notifications,
                  selected: widget.selectedIndex == 3,
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 3;
                    });
                  }),
              IconBottomBar(
                  text: "Profile",
                  icon: Icons.person,
                  selected: widget.selectedIndex == 4,
                  onPressed: () {
                    setState(() {
                      widget.selectedIndex = 4;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  IconBottomBar(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: selected ? const Color(0xff15BE77) : Colors.grey,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              height: .1,
              color: selected ? const Color(0xff15BE77) : Colors.grey),
        )
      ],
    );
  }
}
