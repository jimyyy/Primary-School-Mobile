import 'package:flutter/material.dart';
import 'package:pfemobile/pages/Absence.dart';
import 'package:pfemobile/pages/api_test.dart';
import 'package:pfemobile/pages/auth/login.dart';
import 'package:pfemobile/pages/auth/register1.dart';
import 'package:pfemobile/pages/auth/register2.dart';
import 'package:pfemobile/pages/detailspayment.dart';
import 'package:pfemobile/pages/home/home.dart';
import 'package:pfemobile/pages/auth/login.dart';
import 'package:pfemobile/pages/auth/register.dart';
import 'package:pfemobile/pages/home/home1.dart';
import 'package:pfemobile/pages/profile.dart';
import 'package:pfemobile/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
      home: splash()
      
      );
  }
}




  
