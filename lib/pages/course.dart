import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/app_header.dart';
import 'package:pfemobile/components/course.dart';
import 'package:pfemobile/components/new_header.dart';

class coursePage extends StatefulWidget {
 
  @override
  State<coursePage> createState() => _coursePageState();
}

class _coursePageState extends State<coursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            NewHeader(title: "cours"),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 18, left: 18),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.search),
                  hintText: 'Recherche',
                  hintStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  labelText: 'Recherche',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            cardcourse(title: "العربية",subtitle: "تواصل شفوي",),
             SizedBox(
              height: 30,
            ),
             
            cardcourse(title: "لغات أجنبية",subtitle: "francais",),
             SizedBox(
              height: 30,
            ),
            cardcourse(title: "االعلوم",subtitle: "math",),
             SizedBox(
              height: 30,
            ),
             cardcourse(title: "تنشية إجتماعية",subtitle: "musique",),
          ],
        ),
      )),
    );
  }
}



Widget _buildPostBody() {
  return Row(
    children: [
      Expanded(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          child: Image.asset(
            'assets/images/aziz.png',
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ],
  );
}
