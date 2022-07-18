import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatefulWidget {
  

  @override
  State<StoriesWidget> createState() => _StoriesWidgetState();


}

 List<String> _usernames = ["ajmi","mayssa"," ftou7","saif","riadh","ons","chaima"];

class _StoriesWidgetState extends State<StoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text("Stories",style: TextStyle(color: Colors.black87,fontWeight:FontWeight.bold),),
              Spacer(),
              TextButton(onPressed: (){}, child:Row(
                children: [
                  Icon(CupertinoIcons.play, color: Colors.black87,),
                  SizedBox(width: 6,),
                  Text("Watch all",style: TextStyle(color: Colors.black87),)
                  
                ],

              ))

            ],
          ),
          SizedBox(height: 16,),
         Container(
           height: 150,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             shrinkWrap: true,
             itemCount: _usernames.length,
             itemBuilder: (BuildContext context,int index){
             return InkWell(
               onTap: (){
                 print("hello");
               },
               child: UserStory(user: _usernames[index],));
           }),
         )
          
        ],
        
      ),
    );
  }
}


class UserStory extends StatelessWidget {
  final String user;

  const UserStory({Key? key,required this.user}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Column(
        
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            child: Icon(CupertinoIcons.person,color: Colors.white,),
          ),
          SizedBox(height: 10,),
          Text(user),
        ],
        
      ),
    );
  }
}