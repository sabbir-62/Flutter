import 'package:flutter/material.dart';
import 'package:new_app/widgets/alert_dialog.dart';
import 'package:new_app/widgets/appbar.dart';
import 'package:new_app/widgets/bottom_navigation_bar.dart';
import 'package:new_app/widgets/box.dart';
import 'package:new_app/widgets/buttons.dart';
import 'package:new_app/widgets/custom_listview.dart';
import 'package:new_app/widgets/drawer.dart';
import 'package:new_app/widgets/floating_action_button.dart';
import 'package:new_app/widgets/form.dart';
import 'package:new_app/widgets/snake_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, mySnakeBar),
      floatingActionButton: buildFloatingActionButton(context, mySnakeBar),
      bottomNavigationBar: buildBottomNavigationBar(context, mySnakeBar),
      drawer: buildDrawer(context, mySnakeBar),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Box(),
              const Buttons(mySnakeBar: mySnakeBar, myAlertDialog: myAlertDialog),
              InputForm(mySnakeBar: mySnakeBar, mySnackBar: (String, BuildContext) {}),
              SizedBox(
                child: CustomListView(),
              ),
            ],
          )
        ),
      ),
    );
  }
}
