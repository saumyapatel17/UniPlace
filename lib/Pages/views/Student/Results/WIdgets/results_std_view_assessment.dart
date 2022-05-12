import 'package:flutter/material.dart';

class ResultsStdViewAssessment extends StatefulWidget {
  const ResultsStdViewAssessment({Key? key}) : super(key: key);

  @override
  State<ResultsStdViewAssessment> createState() =>
      _ResultsStdViewAssessmentState();
}

class _ResultsStdViewAssessmentState extends State<ResultsStdViewAssessment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade100,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Assessment"),
          SizedBox(
            height: 20,
          ),
          Text(
              "kankdnadnd kdmasda djsc j jj  ajdnjdn jndkja janad dndj jdjnsd jjnd ajjn dj kankdnadnd kdmasda djsc j jj  ajdnjdn jndkja janad dndj jdjnsd jjnd ajjn dj kankdnadnd kdmasda djsc j jj  ajdnjdn jndkja janad dndj jdjnsd jjnd ajjn dj kankdnadnd kdmasda djsc j jj  ajdnjdn jndkja janad dndj jdjnsd jjnd ajjn dj")
        ]),
      ),
    );
  }
}
