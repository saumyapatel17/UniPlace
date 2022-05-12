import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Common/search_control.dart';
import 'package:uniplace2/Widgets/search_widget.dart';

class HomeSubheader extends StatelessWidget {
  const HomeSubheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            child: SearchWidget(
                text: "Job Title or Company Name",
                onChanged: (vale) {},
                hintText: "Search"),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            child: Badge(
              padding: EdgeInsets.all(5),
              toAnimate: false,
              badgeContent: Text("15"),
              child: Icon(
                Icons.notifications,
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
