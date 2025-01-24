import 'package:flutter/material.dart';

class CommunitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'Communities'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 15),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                        shape: BoxShape.rectangle
                    ),
                    child: Icon(Icons.group),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15,top: 20),
                    alignment: Alignment.centerLeft,
                    child: Text('New Community',style: TextStyle(fontSize: 19,color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
