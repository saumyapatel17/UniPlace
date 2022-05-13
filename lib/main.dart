import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:uniplace2/Pages/Signin/signin_screen.dart';
import 'package:uniplace2/Pages/Signup/signup_screen.dart';
import 'package:uniplace2/Pages/Signup/signup_screen_std.dart';
import 'package:uniplace2/Pages/Welcome/welcome_screen.dart';
import 'package:uniplace2/Pages/views/PlacementAdmin/Home/home_pa.dart';
import 'package:uniplace2/Pages/views/Student/Explore/explore_std.dart';

import 'Pages/Signup/signup_screen_institute.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => WelcomeScreen(),
      //   "/login": (context) => SigninScreen(),
      //   "/signup": (context) => SignUpScreen(),
      //   "/institute": (context) => SignUpInstitute(),
      //   "/student": (context) => SignUpStd(),
      //   "/instituteHome": (context) => HomePA(),
      // },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
    );
  }
}
