import 'package:flutter/material.dart';
import 'package:pfemobile/components/drawer.dart';

class Homepage1 extends StatefulWidget {
  

  @override
  State<Homepage1> createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        
      ),
      drawer: drawer(
        
      ),

      
    );
  }
}