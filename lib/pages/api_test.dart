import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pfemobile/models/absence.model.dart';
import 'package:pfemobile/services/api_absence.dart';
import 'package:http/http.dart' as http;

ApiAbsence _apiAbsence = ApiAbsence();

class apiTest extends StatefulWidget {
  @override
  State<apiTest> createState() => _apiTestState();
}

class _apiTestState extends State<apiTest> {
  late Map data;
  late List userData;

  Future getdata() async {
    String base_url = "https://reqres.in/api/users?page=2";
    http.Response response = await http.get(Uri.parse(base_url));
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
    print(userData.toString());
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount:userData == null ? 0 : userData.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(userData[index]["avatar"]),
                    ),
                    Text(userData[index]["first_name"])
                  ],
                ),
                
                
              );
            }),
      ),
    );
  }
}
