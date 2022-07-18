// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/new_header.dart';
import 'package:pfemobile/pages/auth/register1.dart';
import 'package:pfemobile/pages/auth/register2.dart';
import 'package:pfemobile/pages/home/home.dart';
import 'package:pfemobile/pages/auth/login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}



class _RegisterPageState extends State<RegisterPage> {
  final _formkey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       

        //resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(right: 20,left: 20),
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  
                  NewHeader(title: "Préinscription"),
                  SizedBox(height: 80,),

                  //  Row(
                  //    children: [
                  //      Stepper(
                  //        type: StepperType.horizontal,
                  //        steps: [
                  //          Step(title: Text("1"), content:Container()),
                  //          Step(title: Text("2"), content: Container())

                  //        ],
                        
                  //        ),
                  //    ],
                  //  ),

                  
                 
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.person),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Nom',
                      ),
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Champ obligatoire'
                            : !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                                ? 'invalid format'
                                : null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.person),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Prénom',
                      ),
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Champ obligatoire'
                            : !RegExp(r'^[a-z A-Z]+$').hasMatch(value)
                                ? 'invalid format'
                                : null;
                      }),
                  SizedBox(
                    height: 20,
                  ),

                  Container(
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey)),
                    child: test(),
                  ),
                  

                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.mail),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        labelText: 'Email',
                      ),
                      validator: (value) {
                        return value!.isEmpty ? 'Champ obligatoire' :!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)?'invalid email' :null;
                      }),
                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                   prefixIcon: Icon(CupertinoIcons.lock),
                   border: OutlineInputBorder(
                     borderRadius:
                         const BorderRadius.all(Radius.circular(15.0)),
                   ),
                   labelText: 'Mot de passe ',
                      ),
                      validator: (value) {
                   return value!.isEmpty ? 'Champ obligatoire': !RegExp(r'^[a-z A Z 0-9]+$').hasMatch(value)
                           ? 'invalid format'
                           : null;
                      }),
                 
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Next",
                        style: TextStyle(color: Colors.blue.shade500),
                      ),
                      IconButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => Register1()));
                            }
                            
                          },
                          icon: Icon(CupertinoIcons.arrow_right),
                          color: Colors.blue.shade500)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      children: [
                        Text('Vous avez un compte?'),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()));
                            },
                            child: Text("Connecter")),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}
