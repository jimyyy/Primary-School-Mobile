import 'package:flutter/material.dart';

class Mydropdown extends StatefulWidget {


  @override
  State<Mydropdown> createState() => _MydropdownState();
}

class _MydropdownState extends State<Mydropdown> {
  String? defaultstr;
  var list=["Résident","Etranger"];
  
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
              hint:Text("Résidence"),
              items:list.map((e) {
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