import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../Widgets/job_card_tag.dart';

class CompanyStdInfoCard extends StatelessWidget {
  const CompanyStdInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 50),
      height: 280,
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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: RichText(
              text: TextSpan(children: [
                WidgetSpan(
                    child: Icon(
                  Icons.location_city,
                  size: 25,
                )),
                TextSpan(text: "Mumbai", style: TextStyle(color: kPrimaryColor))
              ]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.location_city,
                    size: 25,
                  )),
                  TextSpan(
                      text: "No of Posts Offered",
                      style: TextStyle(color: kPrimaryColor))
                ]),
              ),
              RichText(
                text: TextSpan(children: [
                  WidgetSpan(
                      child: Icon(
                    Icons.location_city,
                    size: 25,
                  )),
                  TextSpan(
                      text: "Applied", style: TextStyle(color: kPrimaryColor))
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(child: Text("APPLY BEFORE\n 03 June,2022")),
              Container(child: Text("JOB NATURE\n Full Time"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(child: Text("SALARY RANGE\n 40-60K Yearly")),
              Container(child: Text("JOB LOCATION\n Jaipur"))
            ],
          )
        ],
      ),
    );
  }
}
