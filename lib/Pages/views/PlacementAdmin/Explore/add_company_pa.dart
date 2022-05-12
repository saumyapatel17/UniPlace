import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/views/Student/Explore/Widgets/company_std_skills.dart';
import 'package:uniplace2/Widgets/inputfield.dart';
import 'package:uniplace2/Widgets/inputfield_multiline.dart';
import 'package:uniplace2/Widgets/rounded_input_field.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

import '../../../../Widgets/bottom_nav_bar2.dart';
import '../../../../Widgets/rounded_button.dart';

class AddCompanyPA extends StatefulWidget {
  final tabindex = 1;
  const AddCompanyPA({Key? key}) : super(key: key);

  @override
  State<AddCompanyPA> createState() => _AddCompanyPAState();
}

class _AddCompanyPAState extends State<AddCompanyPA>
    with SingleTickerProviderStateMixin {
  TextEditingController userInput = TextEditingController();

  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['png', 'jpg', 'jpeg']);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  deleteSelecetd() async {
    setState(() {
      _platformFile = null;
    });
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  List? skills = [];

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
                  InputField(hintText: "Company Name", onChanged: (value) {}),
                  InputFieldMultiline(
                      hintText: "About Company", onChanged: (value) {}),
                  _platformFile == null
                      ? GestureDetector(
                          onTap: selectFile,
                          child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40.0, vertical: 20.0),
                              child: DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(10),
                                dashPattern: [10, 4],
                                strokeCap: StrokeCap.round,
                                color: Colors.blue.shade400,
                                child: Container(
                                  width: double.infinity,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color:
                                          Colors.blue.shade50.withOpacity(.3),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.folder_open,
                                        color: Colors.blue,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'Choose Company Logo',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey.shade400),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        )
                      : Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Choosen Logo',
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade200,
                                      offset: Offset(0, 1),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.file(
                                          _file!,
                                          width: 70,
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _platformFile!.name,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '${(_platformFile!.size / 1024).ceil()} KB',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey.shade500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                              height: 5,
                                              clipBehavior: Clip.hardEdge,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blue.shade50,
                                              ),
                                              child: LinearProgressIndicator(
                                                value: loadingController.value,
                                              )),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      child: Container(
                                        child: Icon(
                                          Icons.delete_outline_rounded,
                                          size: 30,
                                        ),
                                      ),
                                      onTap: deleteSelecetd,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  InputField(hintText: "Position", onChanged: (value) {}),
                  InputFieldMultiline(
                      hintText: "About Job", onChanged: (value) {}),
                  skills!.isEmpty
                      ? RoundedButton(
                          text: "Add Skills", press: () {}, Width: 200)
                      : CompanyStdSkills()
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
              child: RoundedButton(text: "Add Job", press: () {}, Width: 200))
        ],
      )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: SizedBox(
      //   width: 80,
      //   height: 80,
      //   child: FloatingActionButton(
      //       // shape:
      //       //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //       onPressed: () => {},
      //       child: Icon(
      //         Icons.edit,
      //         size: 25,
      //       )),
      // ),
      bottomNavigationBar: BottomNavBar2(
        selectedIndex: widget.tabindex,
      ),
    );
  }
}
