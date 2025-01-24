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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15,bottom: 20),
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Status',style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 7),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green,width: 2),
                          shape: BoxShape.circle,
                        ),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(arrNames2[index],),
                        ),
                      )
                    ],
                  ),

                );
              },
                itemCount: arrNames2.length,
                itemExtent: 100,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
