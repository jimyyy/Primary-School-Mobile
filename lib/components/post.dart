import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Post_Header(),
          

        ],
      ),
      
    );
  }
}

class Post_Header extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CircleAvatar(
             radius: 20,
            backgroundColor: Colors.red,
            child: Icon(CupertinoIcons.person,color: Colors.white,),
          ),
          SizedBox(width: 6,),
          Text("aziz ajmi"),
          Spacer(),
         IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.ellipsis))
        ],
      ),
      
    );
  }
}