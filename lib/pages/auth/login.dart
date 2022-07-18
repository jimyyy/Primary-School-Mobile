// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/models/user.model.dart';
import 'package:pfemobile/pages/bottom_navigation.dart';
import 'package:pfemobile/pages/home/home.dart';
import 'package:pfemobile/pages/auth/register.dart';
import 'package:pfemobile/pages/home/home1.dart';
import 'package:pfemobile/pages/profile.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Future<Welcome?> login(String email, String mdp) async {
    var response =
        await http.post(Uri.http("192.168.56.1:3000", "api/login"), body: {
      "email": email,
      "mdp": mdp,
    });
    String data = response.body;
    print(data);

    



    if (response.statusCode == 201) {
      
      String responseString = response.body;
      welcomeFromJson(responseString);
    } else
      return null;
  }

  //ignore: unused_field

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool _isPasswordVisible = false;
  late Welcome _welcome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
              height: double.maxFinite,
              child: Image.asset(
                "assets/images/bg.jpg",
                fit: BoxFit.fill,
              )),
          SafeArea(
            child: Container(
                padding: EdgeInsets.only(top: 100, left: 30, right: 30),
                //height: double.infinity,
                width: double.maxFinite,
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Image(
                      image: AssetImage("assets/images/form-wizard.png"),
                      height: 200,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      controller: _emailController,
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.mail),
                        hintText: 'example@gmail.com',
                        hintStyle: TextStyle(color: Colors.blue),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: _isPasswordVisible,
                      decoration: InputDecoration(
                        prefixIcon: Icon(CupertinoIcons.lock),
                        border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15.0)),
                        ),
                        labelText: 'Mot de passe',
                        suffix: InkWell(
                            onTap: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                            child: Text(_isPasswordVisible ? "show" : "hide")),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),

                    //MaterialButton(child: Text("Login"),onPressed: (){} ,color: Colors.blue,)
                    Row(
                      children: [
                        Expanded(
                          child: CupertinoButton(
                            child: Text("Connexion"),
                            onPressed: () async {
                              // String email = _emailController.text;
                              // String mdp = _passwordController.text;

                              // Welcome? data = await login(email, mdp);

                              // print(_emailController.text);
                              // print(_passwordController.text);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          bottom_navigation()));
                            },
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    Row(
                      children: [
                        Text('Vous n avez pas de compte?'),
                        Spacer(),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterPage()));
                            },
                            child: Text("Sinscrire")),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
