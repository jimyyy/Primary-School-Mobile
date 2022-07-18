import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
   final String title;

  const Header({Key? key,  required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.camera)),
        
        Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
         
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.ellipses_bubble)),
      ],
    ));
  }
}
