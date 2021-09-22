import 'package:flutter/material.dart';
import 'package:flutter_day_1/widgets/drawer.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';



class Dashboard extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      drawer: MyDrawer(),
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
         items: [
              SCBottomBarItem(icon: Icons.ac_unit_rounded, onPressed: (){},title: "Home"),
              SCBottomBarItem(icon: Icons.ac_unit_rounded, onPressed: (){},title: "Home"),
              SCBottomBarItem(icon: Icons.ac_unit_rounded, onPressed: (){},title: "Home"),
              SCBottomBarItem(icon: Icons.ac_unit_rounded, onPressed: (){},title: "Home"),
              SCBottomBarItem(icon: Icons.ac_unit_rounded, onPressed: (){},title: "Home"),
            ],
            circleItems:
            [
              SCItem(icon: Icon(Icons.access_time_filled), onPressed: (){}),
              SCItem(icon: Icon(Icons.access_time_filled), onPressed: (){}),
              SCItem(icon: Icon(Icons.access_time_filled), onPressed: (){}),
              SCItem(icon: Icon(Icons.access_time_filled), onPressed: (){}),



            ]), child: Container(
        child: Column(
          children: [
            Text("Bottom bar ")
          ],
        ),
      ),

      ),
    );
  }
}
