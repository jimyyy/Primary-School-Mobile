import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomnav extends StatefulWidget {
  

  @override
  State<bottomnav> createState() => _bottomnavState();
}

class _bottomnavState extends State<bottomnav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("profile"),
          backgroundColor: Colors.blue.shade500,
          ),

           BottomNavigationBarItem(
          icon: Icon(Icons.book),
          title: Text("cours"),
          backgroundColor: Colors.blue.shade500,
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.night_shelter_sharp),
          title: Text("Absence"),
          backgroundColor: Colors.blue.shade500,
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.format_list_numbered_outlined),
          title: Text("Note"),
          backgroundColor: Colors.blue.shade500,
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.logout),
          title: Text("Log out"),
          backgroundColor: Colors.blue.shade500,
          ),
         
      ]),
      
    );
  }
}