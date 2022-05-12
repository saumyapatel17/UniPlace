import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

import '../constants.dart';

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({Key? key}) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  List<dynamic> stream = [];
  List<dynamic> yearMaster = [];
  List<dynamic> year = [];

  String? streamid;
  int? yearid;

  @override
  void initState() {
    super.initState();
    this.stream.add({"id": 1, "label": "BTech"});
    this.stream.add({"id": 2, "label": "BDes"});
    this.stream.add({"id": 3, "label": "BBA"});

    this.yearMaster = [
      {"ID": 1, "Year": 1, "ParentId": 1},
      {"ID": 2, "Year": 2, "ParentId": 1},
      {"ID": 3, "Year": 3, "ParentId": 1},
      {"ID": 4, "Year": 4, "ParentId": 1},
      {"ID": 1, "Year": 1, "ParentId": 2},
      {"ID": 2, "Year": 2, "ParentId": 2},
      {"ID": 3, "Year": 3, "ParentId": 2},
      {"ID": 4, "Year": 4, "ParentId": 2},
      {"ID": 1, "Year": 1, "ParentId": 3},
      {"ID": 2, "Year": 2, "ParentId": 3},
      {"ID": 3, "Year": 3, "ParentId": 3},
    ];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: FormHelper.dropDownWidget(
                context, "Stream", streamid, stream, (onchangevalue) {
              streamid = onchangevalue;
              print("Selected stream $onchangevalue");

              year = yearMaster
                  .where((yearitem) =>
                      yearitem["ParentId"].toString() ==
                      onchangevalue.toString())
                  .toList();
              print(year);
              yearid = null;
            }, (onValidateValue) {
              if (onValidateValue == null) {
                return 'Please Select Country';
              }
              return null;
            },
                optionLabel: "label",
                optionValue: "id",
                borderColor: Colors.transparent,
                borderFocusColor: Colors.transparent),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.all(5),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: kPrimaryLightColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: FormHelper.dropDownWidget(context, "Year", yearid, year,
                (onchangevalue) {
              yearid = onchangevalue;
            }, (onValidateValue) {
              return null;
            },
                optionLabel: "Year",
                optionValue: "ID",
                borderColor: Colors.transparent,
                borderFocusColor: Colors.transparent),
          ),
        ],
      ),
    );
  }
}
