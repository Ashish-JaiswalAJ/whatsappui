import 'package:flutter/material.dart';
import 'package:navigation2/CommunitiesScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var arrNames = ['Harsh kumar','Anup','sonu','abhisek','ranjit roy','seven','eight','nine','ten'];
    var arrNames1 = ['9:30','9:20','6:00','7:00','8:00','9:20','6:00','7:00','8:00'];
    var arrNames2 = ['assets/images/123.JPG','assets/images/78585735-12825683-image-a-28_1701762383357.jpg','assets/images/cFkGzSiPEbMrKpyqaQXJFV.jpg','assets/images/demo-image1.png','assets/images/demo-image2.png','assets/images/gta-vi-trailer-1-0423.jpg','assets/images/gta-6-grand-theft-auto-vice-city-hd-wallpaper_594776-4452.jpg','assets/images/gta-vi-trailer-1-0978.jpg','assets/images/images.jpg','assets/images/pexels-sam-lion-5709529.jpg','assets/images/resize.jpg'];
    var arrNames3 = ['hi','khya haal hai','images bhej to','happy birthday bro','ok thanks','ye kaha ka hai','ok','haaa','thik hai'];


    return Scaffold(
        floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(
        255, 33, 190, 98),
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {return CommunitiesScreen();},));
          },child: Icon(Icons.add_comment_rounded,color: Color(0xFF0B141B),size: 25,),),
      backgroundColor: Color(0xFF0B141B),
      appBar: AppBar(
    backgroundColor: Color(0xFF0B141B),
    title: Text(style:TextStyle(
    fontWeight: FontWeight.bold,
    fontSize:30,
    color: Colors.white
    ),textAlign: TextAlign.left,'WhatsApp'),),
      body:Column(
        children: [
          Container(
        width: 400,
        height: 50,
        // Optional padding
        decoration: BoxDecoration(
          color: Color(0xFF242B31),    // Optional background color
          borderRadius: BorderRadius.circular(30.0), // Rounded corners
        ),
              child:Row(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Icon(Icons.search,color: Colors.white,),
                  ),
                  Text(style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                  ),'Search...')
                ],
              )),
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

class data {
}
