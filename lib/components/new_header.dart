import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class NewHeader extends StatelessWidget {
  final String title;

  const NewHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildHeader(title);
  }
}

Widget _buildHeader(String title) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          onPressed: () {
            
          },
          icon: Icon(
            CupertinoIcons.chevron_back,
           
          )),
      Text(
        title,
        style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 25),
      ),
      IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.ellipsis_vertical,
            
          ))
    ],
  );
}