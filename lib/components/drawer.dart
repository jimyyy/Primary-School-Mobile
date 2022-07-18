import 'package:flutter/material.dart';
import 'package:pfemobile/pages/auth/login.dart';
import 'package:pfemobile/pages/profile.dart';

class drawer extends StatefulWidget {
 

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.blue.shade500,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/images/aziz.png"), fit:BoxFit.fill),
                    ),
                  ),
                  Text("aziz ajmi",style: TextStyle(fontSize: 22,color: Colors.white),),
                  Text("ajmiaziz109@gmail.com",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),

          InkWell(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile",style: TextStyle(fontSize: 15),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profilePge()));
              },
              
            ),
          ),
            ListTile(
            leading: Icon(Icons.monetization_on),
            title: Text("Quittance de paiement",style: TextStyle(fontSize: 15),),
            onTap: null,
          ),

           ListTile(
            leading: Icon(Icons.night_shelter_sharp),
            title: Text("Mes absences",style: TextStyle(fontSize: 15),),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered_outlined),
            title: Text("Mes notes",style: TextStyle(fontSize: 15),),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.menu_book_outlined),
            title: Text("Mes cours",style: TextStyle(fontSize: 15),),
            onTap: null,
          ),
            ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Log out",style: TextStyle(fontSize: 15),),
            onTap: null,
          )
        ],
      ),

      
    );
  }
}