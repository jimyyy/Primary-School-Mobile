import 'package:flutter/material.dart';
import 'package:pfemobile/pages/Absence.dart';
import 'package:pfemobile/pages/Note.dart';
import 'package:pfemobile/pages/course.dart';
import 'package:pfemobile/pages/detailspayment.dart';
import 'package:pfemobile/pages/profile.dart';

class bottom_navigation extends StatefulWidget {


  @override
  State<bottom_navigation> createState() => _bottom_navigationState();
}

class _bottom_navigationState extends State<bottom_navigation> {
  late PageController _pageController;
  int _page = 0;

  List<Widget> myPages = [
     Container(
      child: profilePge(),
    ),
    Container(
      child: coursePage(),
    ),
     Container(
      child: AbsencePage(),
    ),
    Container(
      child: NotePage(),
    ),
    
    Container(
      child: detailsPayment(),
    ),

      
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myPages[_page],
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        type: BottomNavigationBarType.fixed,
        items: [
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
            icon: Icon(Icons.money),
            title: Text("paiement"),
            backgroundColor: Colors.blue.shade500,
          ),
         
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}