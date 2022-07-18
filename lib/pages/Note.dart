import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/new_header.dart';

class NotePage extends StatefulWidget {
 

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Column(
          children: [
             NewHeader(title: "Mes notes"),
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

            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              child: ListView.builder(
                 physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 9,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                     margin: EdgeInsets.only(bottom: 12),
                     
                      width: 300.0,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 4,
                              offset: Offset(4, 8), // Shadow position
                            ),
                          ],
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            
                            Row(
                              children: [
                                Text(
                                  "Module",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("arabe")
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  "Matiere",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("tawasel chafaoui")
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  "Enseignant",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("ahmed")
                              ],
                            ),
                             Divider(),
                            Row(
                              children: [
                                Text(
                                  "Note",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("18")
                              ],
                            ),
                            Divider(),
                            
                          ]));
                },
              ),
            ),

          ],
        ),
      )),
      
      
    );
  }
}