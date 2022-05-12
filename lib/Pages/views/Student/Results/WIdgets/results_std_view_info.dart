import 'package:flutter/material.dart';

class ResultsStdViewInfo extends StatelessWidget {
  const ResultsStdViewInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 20),
      width: 400,
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
        ],
      ),
    );
  }
}
