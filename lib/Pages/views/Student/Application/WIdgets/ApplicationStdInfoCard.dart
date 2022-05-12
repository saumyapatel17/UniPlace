import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class ApplicationStdCard extends StatelessWidget {
  const ApplicationStdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 50),
      height: 230,
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
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Applied On: ",
                  style: TextStyle(fontSize: 17),
                ),
                Text("03/05/2022", style: TextStyle(fontSize: 17))
              ],
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
