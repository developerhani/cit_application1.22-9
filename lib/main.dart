import 'package:flutter/material.dart';
import 'package:flutter_day_1/dashboard.dart';
import 'package:flutter_day_1/splash_screen.dart';
import 'package:flutter_day_1/utils/routes.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Day 1 Practice',
      theme: ThemeData(
        // dialogBackgroundColor: ,
        primarySwatch: Colors.amber,
        backgroundColor: Colors.red,
      ),
      // home: Home(),
      routes: {
        "/": (context) => Splash(),
        // "/": (context) => Home(),
        MyRoutes.DashboardRoutes: (context) => Dashboard(),
        MyRoutes.LoginRoutes:(context)=> Home(),
        // MyRoutes.
      },
    );
  }
}
