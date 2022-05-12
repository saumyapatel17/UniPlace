import 'package:flutter/material.dart';

class JobCardTags extends StatefulWidget {
  const JobCardTags({
    Key? key,
  }) : super(key: key);

  @override
  State<JobCardTags> createState() => _JobCardTagsState();
}

class _JobCardTagsState extends State<JobCardTags> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Colors.black26),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black45,
              offset: Offset(1.0, 1.0),
              blurRadius: 5,
            )
          ]),
      child: Text("Internship"),
    );
  }
}
