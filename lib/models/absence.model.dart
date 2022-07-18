// To parse this JSON data, do
//
//     final absence = absenceFromJson(jsonString);

import 'dart:convert';

Absence absenceFromJson(String str) => Absence.fromJson(json.decode(str));

String absenceToJson(Absence data) => json.encode(data.toJson());

class Absence {
    Absence({
        required this.id,
        required this.idEleve,
        required this.idEnseignant,
        required this.remarque,
        required this.presence,
        required this.idGroupe,
        required this.idMatiere,
        required this.date,
        required this.v,
    });

    String id;
    String idEleve;
    String idEnseignant;
    String remarque;
    String presence;
    String idGroupe;
    String idMatiere;
    String date;
    int v;

    factory Absence.fromJson(Map<String, dynamic> json) => Absence(
        id: json["_id"],
        idEleve: json["idEleve"],
        idEnseignant: json["idEnseignant"],
        remarque: json["remarque"],
        presence: json["presence"],
        idGroupe: json["idGroupe"],
        idMatiere: json["idMatiere"],
        date: json["date"],
        v: json["__v"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "idEleve": idEleve,
        "idEnseignant": idEnseignant,
        "remarque": remarque,
        "presence": presence,
        "idGroupe": idGroupe,
        "idMatiere": idMatiere,
        "date": date,
        "__v": v,
    };
}
