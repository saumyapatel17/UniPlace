import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyStdSkillContainer extends StatelessWidget {
  String imagepath;
  CompanyStdSkillContainer({required this.imagepath, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          //boxShadow: <BoxShadow>[
          //   BoxShadow(
          //     color: Color.fromARGB(115, 241, 241, 241),
          //     //offset: Offset(0.25, 0.25),
          //     blurRadius: 0.25,
          //   )
          // ]
          ),
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(2),
      child: SvgPicture.asset(
        imagepath,
        height: 60,
        width: 60,
      ),
    );
  }
}
