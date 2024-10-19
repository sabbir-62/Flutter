import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  mySnakeBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        titleSpacing: 10,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.teal,
        actions: [
          IconButton(onPressed: (){mySnakeBar("Hello, I am Search", context);}, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){mySnakeBar("Hello, I am Comment", context);}, icon: const Icon(Icons.comment)),
          IconButton(onPressed: (){mySnakeBar("Hello, I am Email", context);}, icon: const Icon(Icons.email))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: (){
          mySnakeBar("I am floating action button", context);
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("Sabbir")),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Home")),
            ListTile(title: Text("Home"))
          ],
        ),
      ),
    );
  }
}
