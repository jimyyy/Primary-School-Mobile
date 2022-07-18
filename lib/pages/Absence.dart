import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/new_header.dart';
import 'package:http/http.dart' as http;
import 'package:pfemobile/models/absence.model.dart';

class AbsencePage extends StatefulWidget {
  @override
  State<AbsencePage> createState() => _AbsencePageState();
}

class _AbsencePageState extends State<AbsencePage> {
  late Map fiches;
  late List userdata;

  Future getdata() async {
    String base_url = "http://localhost:3000/api/allfiches";
    http.Response response = await http.get(Uri.parse(base_url));
    fiches = json.decode(response.body);
    setState(() {
      userdata = fiches["fiches"];
    });
    print(userdata.toString());
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            NewHeader(title: "Mes absences"),
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
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount:10, //userdata == null ? 0 : userdata.length,
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
                            Text("10/02/2022",
                              //userdata[index]["date"],
                              style: TextStyle(
                                color: Colors.blue.shade400,
                              ),
                              textAlign: TextAlign.center,
                            ),
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
                                  "Status",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("PRESENT")
                              ],
                            ),
                            Divider(),
                            Row(
                              children: [
                                Text(
                                  "remarque",
                                  style: TextStyle(color: Colors.blue.shade400),
                                ),
                                Spacer(),
                                Text("good")//userdata[index]["remarque"])
                              ],
                            ),
                            Divider()
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
