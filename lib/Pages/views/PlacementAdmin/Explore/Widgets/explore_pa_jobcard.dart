import 'package:flutter/material.dart';

import '../../../../../Widgets/job_card_tag.dart';
import '../../../../../constants.dart';

class ExplorePAJobCard extends StatefulWidget {
  const ExplorePAJobCard({Key? key}) : super(key: key);

  @override
  State<ExplorePAJobCard> createState() => _ExplorePAJobCardState();
}

class _ExplorePAJobCardState extends State<ExplorePAJobCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      padding: EdgeInsets.all(15),
      height: 330,
      width: 380,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              offset: Offset(3.0, 3.0),
              blurRadius: 10,
            )
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 85,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(image: AssetImage("assets/logos/apple.png")),
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 270,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: Center(
                          child: Text(
                        "Apple Inc.",
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 270,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Senior Ui/Ux Designer",
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 80,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_city,
                        size: 25,
                      )),
                      TextSpan(
                          text: "Mumbai",
                          style: TextStyle(color: kPrimaryColor))
                    ]),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.location_city,
                        size: 25,
                      )),
                      TextSpan(
                          text:
                              "Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,Adobe Illustrator,",
                          style: TextStyle(color: kPrimaryColor))
                    ]),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.people,
                        size: 25,
                      )),
                      TextSpan(
                          text: "24 Applications",
                          style: TextStyle(color: kPrimaryColor))
                    ]),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: Icon(
                        Icons.calendar_today_rounded,
                        size: 25,
                      )),
                      TextSpan(
                          text: "Applied",
                          style: TextStyle(color: kPrimaryColor))
                    ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 45,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    JobCardTags(),
                    JobCardTags(),
                    JobCardTags(),
                    JobCardTags(),
                    JobCardTags(),
                    JobCardTags(),
                  ]),
            ),
          ),
          Container(
            height: 45,
            width: double.infinity,
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  child: GestureDetector(
                      onTap: () => {},
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "View Applications",
                              style: TextStyle(
                                  fontSize: 16, color: kPrimaryColor)),
                          WidgetSpan(
                              child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.arrow_right_alt,
                              size: 20,
                            ),
                          ))
                        ]),
                      )),
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
