import 'package:flutter/material.dart';

import '../../../../Widgets/bottom_nav_bar2.dart';
import '../../Student/Explore/Widgets/company_std_about_company.dart';
import '../../Student/Explore/Widgets/company_std_images_caorusel.dart';
import '../../Student/Explore/Widgets/company_std_info_card.dart';
import '../../Student/Explore/Widgets/company_std_jobdetails.dart';
import '../../Student/Explore/Widgets/company_std_requirement.dart';
import '../../Student/Explore/Widgets/company_std_skills.dart';

class CompanyPA extends StatefulWidget {
  final tabindex = 1;
  const CompanyPA({Key? key}) : super(key: key);

  @override
  State<CompanyPA> createState() => _CompanyPAState();
}

class _CompanyPAState extends State<CompanyPA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Details"),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications),
            tooltip: "Settings",
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CompanyStdInfoCard(),
                  CompanyStdAbout(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
                    child: Divider(
                      color: Colors.black45,
                      height: 10,
                    ),
                  ),
                  CompanyStdImgCarousel(),
                  CompanyStdJobDetails(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
                    child: Divider(
                      color: Colors.black45,
                      height: 10,
                    ),
                  ),
                  CompanyStdSkills(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 20),
                    child: Divider(
                      color: Colors.black45,
                      height: 10,
                    ),
                  ),
                  CompanyStdRequirement(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
            // shape:
            //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () => {},
            child: Icon(
              Icons.edit,
              size: 25,
            )),
      ),
      bottomNavigationBar: BottomNavBar2(
        selectedIndex: widget.tabindex,
      ),
    );
  }
}
