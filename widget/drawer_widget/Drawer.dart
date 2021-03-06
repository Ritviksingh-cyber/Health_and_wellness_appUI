import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return Drawer(
      child:  ListView(
        padding: EdgeInsets.zero,
        children:  [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.redAccent),
                accountName:const Text("Ritvik Singh",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                accountEmail: const Text("singhritvik57@gmail.com",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                currentAccountPicture: CircleAvatar
                  (
                  child: Image.asset("assets/images/0001.jpg", fit:BoxFit.fill,),
                )
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color:Colors.redAccent,
            ),
            title:Text(
              "Profile",
              textScaleFactor: 1.3,
              style: TextStyle
                (
                  color:Colors.red),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color:Colors.redAccent,
            ),
            title:Text(
              "Home",
              textScaleFactor: 1.3,
              style: TextStyle
                (
                  color:Colors.red),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color:Colors.redAccent,
            ),
            title:Text(
              "Health Information",
              textScaleFactor: 1.3,
              style: TextStyle
                (
                  color:Colors.red),
            ),
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color:Colors.redAccent,
            ),
            title:Text(
              "Mail Id",
              textScaleFactor: 1.3,
              style: TextStyle
                (
                  color:Colors.red),
            ),
          ),
        ],
      ),
    );

  }
}
