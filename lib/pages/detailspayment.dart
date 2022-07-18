import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfemobile/components/app_header.dart';
import 'package:pfemobile/components/bottom_navigation.dart';
import 'package:pfemobile/components/new_header.dart';

class detailsPayment extends StatefulWidget {
  @override
  State<detailsPayment> createState() => _detailsPaymentState();
}

class _detailsPaymentState extends State<detailsPayment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      

      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
           NewHeader(title: "détails paiement"),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(right: 18, left: 18),
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.search),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                  ),
                  labelText: 'Search',
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Total :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "1000 dt",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Montant payé :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "750 dt",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Reste :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "250 dt",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Date de paiement :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "2022-06-03",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.black45,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                children: [
                  Text(
                    "Mode :",
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    "Virement bancaire",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CupertinoIcons.cloud_download,
                        size: 30,
                        color: Colors.black87,
                      ))
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}





