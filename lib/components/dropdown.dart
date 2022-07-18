import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  List<String> _niveau = [
    "1er",
    "2eme",
    "3eme",
    "4eme",
    "5eme",
    "6eme",
    
  ];
  String? value;
  String? defaultstr;
 


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
          height: 50,
          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
          color: Colors.white,
          child: Row(children: [
            Expanded(child:
            DropdownButton(
              value: defaultstr,
              underline: SizedBox(),
              isExpanded: true,
              hint:Text("Niveau scolaire"),
              items:_niveau.map((e) {
                return DropdownMenuItem(value:e,child:Text(e));
              }).toList(),
              onChanged: (String? v){
                setState(() {
                  defaultstr=v;
                });
              },
             ) 
            ),

          ],)
            
          ),
        )
      ],
    );
  }
}
