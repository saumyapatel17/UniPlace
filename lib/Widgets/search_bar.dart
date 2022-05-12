import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/icons/search_icon.svg",
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Search job titles, companies",
            style: TextStyle(color: Colors.grey.shade300),
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/slider_icon.svg",
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
