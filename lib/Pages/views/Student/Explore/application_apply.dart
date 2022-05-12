import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Widgets/bottom_nav_bar2.dart';
import 'package:uniplace2/Widgets/pages_header.dart';
import 'dart:io';

import 'package:uniplace2/Widgets/rounded_button.dart';

class ApplicationStdApply extends StatefulWidget {
  const ApplicationStdApply({Key? key}) : super(key: key);

  @override
  State<ApplicationStdApply> createState() => _ApplicationStdApplyState();
}

class _ApplicationStdApplyState extends State<ApplicationStdApply>
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Application"),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications),
            tooltip: "Settings",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 200,
                      child: Image(
                        image: AssetImage('assets/images/hire.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            child: Text(
                              "Why should we hire you?",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: SizedBox(
                              height: 150,
                              child: TextFormField(
                                controller: userInput,
                                maxLength: 1000,
                                keyboardType: TextInputType.multiline,
                                minLines: 8,
                                maxLines: 20,
                                decoration: InputDecoration(
                                  hintText: "Enter text here...",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            child: Text("Documents",
                                style: TextStyle(fontSize: 25)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
                                              color: Colors.blue.shade50
                                                  .withOpacity(.3),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
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
                                                'Select your file',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        Colors.grey.shade400),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )),
                                )
                              : Container(
                                  padding: EdgeInsets.all(20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Selected File',
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                                borderRadius:
                                                    BorderRadius.circular(8),
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
                                                        color: Colors
                                                            .grey.shade500),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                  Container(
                                                      height: 5,
                                                      clipBehavior:
                                                          Clip.hardEdge,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color:
                                                            Colors.blue.shade50,
                                                      ),
                                                      child:
                                                          LinearProgressIndicator(
                                                        value: loadingController
                                                            .value,
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
                          RoundedButton(
                              text: "Submit", press: () {}, Width: 200)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar2(selectedIndex: 1),
    );
  }
}
