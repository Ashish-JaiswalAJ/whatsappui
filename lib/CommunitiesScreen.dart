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
      body: Container(
        width: 100,
        height: 100,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/123.JPG'),
        ),
      )
    );
  }
}
