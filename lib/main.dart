import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uniplace2/Pages/Signin/signin_screen.dart';
import 'package:uniplace2/Pages/Signup/signup_screen.dart';
import 'package:uniplace2/Pages/Signup/signup_screen_std.dart';
import 'package:uniplace2/Pages/Welcome/welcome_screen.dart';
import 'package:uniplace2/Pages/views/PlacementAdmin/Explore/add_company_pa.dart';
import 'package:uniplace2/Pages/views/PlacementAdmin/Explore/company_pa.dart';
import 'package:uniplace2/Pages/views/PlacementAdmin/Explore/explore_pa.dart';
import 'package:uniplace2/Pages/views/Student/Explore/company_std.dart';
import 'package:uniplace2/Pages/views/Student/Explore/explore_std.dart';
import 'package:uniplace2/Pages/views/Student/Profile/add_skills_std.dart';
import 'package:uniplace2/Pages/views/Student/Profile/profile_std.dart';
import 'package:uniplace2/Pages/views/Student/Results/ResultsStd.dart';
import 'package:uniplace2/Pages/views/Student/Results/Results_std_view.dart';
import 'Pages/Signup/signup_screen_institute.dart';
import 'Pages/views/Student/Application/ApplcationStd.dart';
import 'Pages/views/Student/Application/view_your_application_std.dart';
import 'Pages/views/Student/Explore/application_apply.dart';
import 'Pages/views/Student/Home/home_std.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Flutter Demo',
      //debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => WelcomeScreen(),
        "/login": (context) => SigninScreen(),
        "/signup": (context) => SignUpScreen(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
