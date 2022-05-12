import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Home/Widgets/home_std_recommended_card.dart';

class HomeRecommendedList extends StatelessWidget {
  const HomeRecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          HomeStdRecommendedCard(),
          HomeStdRecommendedCard(),
          HomeStdRecommendedCard(),
          HomeStdRecommendedCard()
        ],
      ),
    );
  }
}
