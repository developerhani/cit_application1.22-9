import 'package:flutter/material.dart';
import 'package:flutter_day_1/utils/routes.dart';
import 'package:flutter_day_1/widgets/mywidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    bool _txtpassword = false;
    return Material(
      color: Colors.black12,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            "Welcome to $name",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: Column(
              children: [
                //fields called from mywidget.dart
                TextFormWidget(
                    hintText: "Email",
                    labelText: "Enter Email",
                    obscureText: false
                ),
                SizedBox(height: 40.0),
                TextFormWidget(
                    hintText: "Password",
                    labelText: "Enter Password",
                    obscureText: true),
                SizedBox(
                  height: 50.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.DashboardRoutes);
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
