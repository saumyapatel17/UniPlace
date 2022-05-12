import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Explore/Widgets/company_std_skill_container.dart';

class CompanyStdSkills extends StatelessWidget {
  CompanyStdSkills({Key? key}) : super(key: key);

  var images = [
    'assets/skills/adobe-bridge.svg',
    'assets/skills/adobe-creative-cloud.svg',
    'assets/skills/adobe-dreamweaver.svg',
    'assets/skills/adobe-fireworks.svg',
    'assets/skills/adobe-flash.svg',
    'assets/skills/adobe-framemaker.svg',
    'assets/skills/adobe-illustrator.svg'
  ];

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
                for (var item in images)
                  CompanyStdSkillContainer(imagepath: item)
              ],
            ),
          )
        ]),
      ),
    );
  }
}
