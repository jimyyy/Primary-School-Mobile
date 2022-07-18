import 'package:flutter/material.dart';


class cardcourse extends StatelessWidget {
  final String title;
   final String subtitle;

  const cardcourse({Key? key, required this.title, required this.subtitle}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return  _buildStoriesRow(title,subtitle);
      
    
  }
}


Widget _buildStoriesRow(String title, String subtitle) {





  
  return Container(
      height: 170,
      child: ListView.builder(
          itemCount: 4,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
           
            return _buildStory(title,subtitle,context);
          
          }));
}

Widget _buildStory(String title,String subtitle,BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width *0.5,
    height: MediaQuery.of(context).size.height *0.7,
   
    
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), color: Colors.orange.shade300),
      
        
    child: Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(
            height: 7,
          ),
          Text(subtitle,style: TextStyle(color: Colors.white)),
           SizedBox(
            height: 12,
          ),
          TextButton(onPressed: (){}, child: Text("Voir cours"))
         
        ],
      ),
    ),
  );
}