import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Drawer buildDrawer(BuildContext context, mySnakeBar){
  return Drawer(
  child: ListView(
    children: [
      DrawerHeader(
          padding: const EdgeInsets.all(0),
          child: UserAccountsDrawerHeader(
            decoration: const BoxDecoration(color: Colors.teal),
            accountName: const Text("Sabbir"),
            accountEmail: const Text("sabbir.hossain.se62@gmail.com"),
            currentAccountPicture: Image.network("https://cdn-icons-png.flaticon.com/512/7077/7077313.png"),
          )
      ),
      ListTile(
        leading: const Icon(Icons.home),
        title: const Text("Home"),
        onTap: (){mySnakeBar("This is home", context);},
      ),
      ListTile(
        leading: const Icon(Icons.person),
        title: const Text("Profile"),
        onTap: (){mySnakeBar("This is profile", context);},
      ),
      ListTile(
        leading: const Icon(Icons.mail),
        title: const Text("Contact"),
        onTap: (){mySnakeBar("This is contact", context);},
      )
    ],
  ),
  );
}