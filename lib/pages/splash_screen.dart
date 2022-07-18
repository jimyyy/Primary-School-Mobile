import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pfemobile/pages/auth/login.dart';

class splash extends StatefulWidget {
 

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    
    super.initState();
     Timer(
             Duration(seconds: 4),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                 builder: (BuildContext context) => LoginPage())));
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade400,
      body: Container(
        padding: EdgeInsets.only(top: 90,right: 70,left: 70),
       

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: [
          Column(
            
            children: [
              Image.asset("assets/images/logo1.jpg",height: 200,width: 200,),
              SizedBox(height: 30,),
              Text("Bienvenue sur notre espace élève/parents ", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white),)
            ],
          ),
          CircularProgressIndicator(color: Colors.white,),
          
        ],),
      ),
      
    );
  }
}