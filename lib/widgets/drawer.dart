import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black12,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.cyan),
                accountEmail: Text("Muhammadhaneefskt316@gmail.com"),
                accountName: Text("Muhammad Haneef"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/login.png"),
                )),
              ),
            ListTile(
              onTap: (){
                print("Drawer1 button clicked");
                },
              leading: Icon(CupertinoIcons.person),
             title: Text("Profile",
             style: TextStyle(color: Colors.white),
             ),
            ),

            ListTile(
              onTap: (){
                print("Drawer2 button clicked");
              },
              leading: Icon(Icons.logout,
              color: Colors.white,),
              title: Text("Notification",
                style: TextStyle(color: Colors.white),
              ),
            ),

              ],

        ),
      )

    );
  }
}
