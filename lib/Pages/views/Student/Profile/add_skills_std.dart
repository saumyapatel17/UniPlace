import 'package:flutter/material.dart';
import 'package:uniplace2/Widgets/search_widget.dart';

class AddSkillsStd extends StatefulWidget {
  const AddSkillsStd({Key? key}) : super(key: key);

  @override
  State<AddSkillsStd> createState() => _AddSkillsStdState();
}

class _AddSkillsStdState extends State<AddSkillsStd> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Add Skills"),
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.check),
              tooltip: "Settings",
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              SearchWidget(
                  text: "Skill", onChanged: (value) {}, hintText: "Skill"),
              CheckboxListTile(
                  value: value,
                  title: Text("Skill 1"),
                  onChanged: (value) => {setState(() => this.value = value!)})
            ],
          ),
        ));
  }
}
