import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var arrNames2 = ['assets/images/123.JPG','assets/images/78585735-12825683-image-a-28_1701762383357.jpg','assets/images/cFkGzSiPEbMrKpyqaQXJFV.jpg','assets/images/demo-image1.png','assets/images/demo-image2.png','assets/images/gta-vi-trailer-1-0423.jpg','assets/images/gta-6-grand-theft-auto-vice-city-hd-wallpaper_594776-4452.jpg','assets/images/gta-vi-trailer-1-0978.jpg','assets/images/images.jpg','assets/images/pexels-sam-lion-5709529.jpg','assets/images/resize.jpg'];

    return Scaffold(
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B141B),
        title: Text(style:TextStyle(
            fontWeight: FontWeight.bold,
            fontSize:30,
            color: Colors.white
        ),textAlign: TextAlign.left,'Updates'),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return CircleAvatar(
                backgroundImage: AssetImage(arrNames2[index],),
              );
            },
              itemCount: arrNames2.length,
              itemExtent: 100,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
