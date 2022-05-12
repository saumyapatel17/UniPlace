import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Common/home_stat_card.dart';

class StatList extends StatelessWidget {
  const StatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          StatCard(),
          StatCard(),
          StatCard(),
          StatCard(),
          StatCard(),
          StatCard(),
        ],
      ),
    );
  }
}
