import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/drop.dart';
import 'package:pfemobile/components/dropdown.dart';
import 'package:pfemobile/components/new_header.dart';
import 'package:pfemobile/pages/auth/login.dart';
import 'package:pfemobile/pages/auth/register.dart';
import 'package:pfemobile/pages/auth/register2.dart';
import 'package:pfemobile/pages/home/home.dart';
import 'package:pfemobile/pages/home/home1.dart';

class Register1 extends StatefulWidget {
  
  @override
  State<Register1> createState() => _Register1State();
   
}

class _Register1State extends State<Register1> {
  final _formkey = GlobalKey<FormState>();
  String? value;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          //padding: EdgeInsets.only(top: 80, left: 30, right: 30),
          // height: double.infinity,
          width: double.maxFinite,
          color: Colors.white,
          child: Form(
            key: _formkey,
            child: Container(
               padding: EdgeInsets.only(left: 30, right: 30),
           //height: double.infinity,
              child: Column(
                children: [
                  NewHeader(title: "Préinscription"),
                  
                  SizedBox(
                    height: 80,
                  ),
                  

                  

                  TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.phone),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Téléphone',
                      ),
                      validator: (value) {
                        return value!.isEmpty
                            ? 'Champ obligatoire'
                            : !RegExp(r'^[0-9]+$').hasMatch(value)
                                ? 'invalid format'
                                : null;
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  
                  dropdown(),

                  SizedBox(
                    height: 20,
                  ),

                  

                  Mydropdown(),

                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(CupertinoIcons.book),
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      labelText: 'photo cin ou passport',
                    ),
                  ),

                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          icon: Icon(CupertinoIcons.arrow_left),
                          color: Colors.blue.shade500),
                      Text(
                        " Back ",
                        style: TextStyle(color: Colors.blue.shade500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CupertinoButton(
                        child: Text("S'inscrire"),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          }
                        },
                        color: Colors.blue,
                      ),
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
        ),
      )),
    );
  }
}


