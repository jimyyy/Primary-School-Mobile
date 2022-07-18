import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/app_header.dart';
import 'package:pfemobile/pages/Absence.dart';
import 'package:pfemobile/pages/Note.dart';
import 'package:pfemobile/pages/auth/login.dart';
import 'package:pfemobile/pages/course.dart';
import 'package:pfemobile/pages/detailspayment.dart';
import 'package:pfemobile/pages/home/home1.dart';

class profilePge extends StatefulWidget {
  @override
  State<profilePge> createState() => _profilePgeState();
}

class _profilePgeState extends State<profilePge> {
 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      
      body: SafeArea(
        
          child: SingleChildScrollView(
            
        child: Column(
          children: [
            Header(title: "profile"),
            _buildimage(),
            SizedBox(
              height: 20,
            ),
            _buildtext(),
            SizedBox(
              height: 10,
            ),
            _buildtext1(),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: StatItem(
                      title: 'groupe',
                      value: ' A',
                      icon: Icons.group,
                      color: Colors.red,
                      margin: EdgeInsets.only(right: 3),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: StatItem(
                      title: 'Niveau',
                      value: '4ème',
                      icon: Icons.person,
                      color: Colors.purple,
                      margin: EdgeInsets.only(left: 3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.maxFinite,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.mail),
                  hintText: 'ajmiaziz109@gmail.com',
                  hintStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  labelText: 'ajmiaziz109@gmail.com',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Téléphone",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              width: double.maxFinite,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.phone),
                  hintText: '23319817',
                  hintStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  labelText: '23319817',
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CupertinoButton(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Text("Mettre à  jour"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage1()));
                      },
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15,),

            Container(
              padding: EdgeInsets.only(right: 15,left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage()));
                  }, child: Text("Log out")),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

Widget _buildimage() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 90,
        height: 90,
        margin: EdgeInsets.only(top: 30),
        // padding: EdgeInsets.only(right: 60,left: 60),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("assets/images/aziz.png"), fit: BoxFit.fill),
        ),
      )
    ],
  );
}

Widget _buildtext() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Ajmi Aziz",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    ],
  );
}

Widget _buildtext1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("ajmiaziz109@gmail.com"),
    ],
  );
}

class StatItem extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final Color color;
  final EdgeInsets margin;

  const StatItem({
    Key? key,
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
    required this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildStatItem(title, value, icon, color, margin);
  }
}

Widget _buildStatItem(
    String title, String value, IconData icon, Color color, EdgeInsets margin) {
  return Container(
    margin: margin,
    color: Colors.grey.shade300,
    child: ListTile(
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.grey, fontSize: 13),
      ),
      subtitle: Text(
        value,
        style:
            TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

