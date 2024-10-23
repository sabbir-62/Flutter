import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

FloatingActionButton buildFloatingActionButton(BuildContext context, mySnakeBar){
  return FloatingActionButton(
    elevation: 10,
    onPressed: (){
      mySnakeBar("I am floating action button", context);
    },
    backgroundColor: Colors.teal,
    child: const Icon(Icons.add),
  );
}