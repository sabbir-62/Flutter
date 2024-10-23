import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

BottomNavigationBar buildBottomNavigationBar(BuildContext context, mySnakeBar){
  return BottomNavigationBar(
    currentIndex: 0,
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
    ],
    onTap: (int index){
      if(index == 0){
        mySnakeBar("I am home", context);
      }
      if(index == 1){
        mySnakeBar("I am contact", context);
      }
      if(index == 2){
        mySnakeBar("I am profile", context);
      }
    },
  );
}