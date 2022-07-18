// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.email,
        required this.mdp,
    });

    String email;
    String mdp;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        email: json["email"],
        mdp: json["mdp"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "mdp": mdp,
    };
}