import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var arrNames = ['Harsh kumar','Anup','sonu','abhisek','ranjit roy','seven','eight','nine','ten'];
    var arrNames1 = ['Icon(Icons.call)','Icon(Icons.videocam)','Icon(Icons.call)','icon: Icon(Icons.videocam)','Icon(Icons.call)','Icon(Icons.videocam)','Icon(Icons.call)','Icon(Icons.videocam)','Icon(Icons.call)'];
    var arrNames2 = ['assets/images/123.JPG','assets/images/78585735-12825683-image-a-28_1701762383357.jpg','assets/images/cFkGzSiPEbMrKpyqaQXJFV.jpg','assets/images/demo-image1.png','assets/images/demo-image2.png','assets/images/gta-vi-trailer-1-0423.jpg','assets/images/gta-6-grand-theft-auto-vice-city-hd-wallpaper_594776-4452.jpg','assets/images/gta-vi-trailer-1-0978.jpg','assets/images/images.jpg','assets/images/pexels-sam-lion-5709529.jpg','assets/images/resize.jpg'];
    var arrNames3 = ['17 min ago','20 min ago','15 min ago','50 min ago','Today,8:45am','Yesterday,9:59pm','18 january,10:49pm','17 january,11:15pm','15 January,10:19am'];

    return Scaffold(
        backgroundColor: Color(0xFF0B141B),
        appBar: AppBar(
          backgroundColor: Color(0xFF0B141B),
          title: Text(style:TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:30,
              color: Colors.white
          ),textAlign: TextAlign.left,'Calls'),),
        body:Column(
          children: [

            Text(style:TextStyle(
                fontWeight: FontWeight.bold,

                color: Colors.white
            ),'Recent'),
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(arrNames2[index]),
                  ),
                  title: Text(arrNames[index],style: TextStyle(color: Colors.white),),
                  subtitle: Text(arrNames3[index]),
                  trailing: Text(arrNames1[index]),
                );
              },
                itemCount: (arrNames.length),

              ),
            ),
          ],
        )
    );
  }
}
