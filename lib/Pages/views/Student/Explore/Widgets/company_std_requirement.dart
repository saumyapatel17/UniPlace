import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Explore/Widgets/company_std_requirement_card.dart';

class CompanyStdRequirement extends StatelessWidget {
  const CompanyStdRequirement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Skills Needed"),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
              children: [
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
                CompanyStdRequirementCard(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
