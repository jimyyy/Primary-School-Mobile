import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/dropdown.dart';

class test extends StatefulWidget {
  

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
   DateTime  date =DateTime(2022,12,4);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
           
           
            
            children: [
             Text('${date.year}/${date.month}/${date.day}'),
             Spacer(),
          
             IconButton(onPressed: () async{
                DateTime? newDate=await showDatePicker(
                
                 context: context, initialDate: DateTime.now(), firstDate:DateTime(1900), lastDate: DateTime(2100));
                if (newDate == null) return;
                setState(() {
                  this.date=newDate;
                });
               
             
             }, 
             icon:Icon(CupertinoIcons.time_solid))
            
            ],
        
          ),
        ),
      ],
    );
      
      
    
  }
}