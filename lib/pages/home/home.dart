import 'package:flutter/material.dart';
import 'package:pfemobile/components/app_header.dart';
import 'package:pfemobile/components/post.dart';
import 'package:pfemobile/components/stories.dart';

class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: [Header(title: "home",),SizedBox(height: 16,),StoriesWidget(),Divider(),Post()],

        ),

      )),

      
    );
  }
}