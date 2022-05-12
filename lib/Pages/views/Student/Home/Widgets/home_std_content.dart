import 'package:flutter/material.dart';
import 'package:uniplace2/Common/home_recommended_list.dart';
import 'package:uniplace2/Common/home_stat_list.dart';
import 'package:uniplace2/Pages/views/Student/Home/Widgets/home_std_myjob_card.dart';
import 'package:uniplace2/constants.dart';

class HomeStdContent extends StatelessWidget {
  const HomeStdContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
            color: kPrimaryLightColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "What's New",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: StatList(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommended",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: HomeRecommendedList(),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Jobs",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Expanded(
                  child: Column(
                    children: [
                      HomeStdMyJobCard(),
                      HomeStdMyJobCard(),
                      HomeStdMyJobCard(),
                      HomeStdMyJobCard(),
                      HomeStdMyJobCard(),
                      HomeStdMyJobCard(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
