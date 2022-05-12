import 'package:flutter/material.dart';
import 'package:uniplace2/constants.dart';

class HomeStdRecommendedCard extends StatelessWidget {
  const HomeStdRecommendedCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 25, top: 25),
      child: Container(
        width: 250,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            gradient: RadialGradient(
                center: Alignment.topLeft,
                radius: 1.3,
                colors: [kPrimaryColor, kPrimaryLightColor]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black45,
                offset: Offset(4.0, 4.0),
                blurRadius: 10,
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Senior Ui/Ux Designer",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 7,
              ),
              Text("LinkedIn", style: TextStyle(fontSize: 20)),
              SizedBox(
                height: 7,
              ),
              Text("Jaipur", style: TextStyle(fontSize: 15)),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ElevatedButton(
                      onPressed: () => {},
                      child: Text(
                        "View",
                        style: TextStyle(fontSize: 18),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
