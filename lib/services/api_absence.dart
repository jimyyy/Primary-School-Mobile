import 'dart:convert';

import 'package:http/http.dart';
import 'package:pfemobile/models/absence.model.dart';
import 'package:http/http.dart' as http;

class ApiAbsence {
  Future<List<Absence>> getAllabsence() async {
    List<Absence> absences = [];

    Response resp =
        await http.get(Uri.http("192.168.56.1:3000", "api/allfiches"));
    if (resp.statusCode == 200) {
      var jsondata = jsonDecode(resp.body);
      var data = jsondata["data"];
      data.map((absence) => absences.add(absence.fromJson(absence))).toList();
      print(absences);
      return absences;
    } else {
      return [];
    }
   
  }
}
