import 'package:flutter/material.dart';

class ProfileStd extends StatefulWidget {
  const ProfileStd({Key? key}) : super(key: key);

  @override
  State<ProfileStd> createState() => _ProfileStdState();
}

class _ProfileStdState extends State<ProfileStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.settings),
            tooltip: "Settings",
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/profile_picture.jpg"))),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: FractionallySizedBox(
                    widthFactor: 0.2,
                    heightFactor: 0.2,
                    alignment: FractionalOffset.bottomRight,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.black54,
                      child: IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text("Saumya Patel"),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Text("BTECH 3rd Year"),
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  AppBar(
                    title: Text("Skills"),
                    actions: [
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_rounded))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
