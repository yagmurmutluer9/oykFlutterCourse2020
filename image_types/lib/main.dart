import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowMaterialGrid: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Image Types", style: TextStyle())),
        body: ImageTypes(),
      ),
    );
  }
}

class ImageTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.teal,
      width: double.infinity, // usable for every device
      height: MediaQuery.of(context).size.height, // size of context

      child: Column(
        children: <Widget>[
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Image.asset("images/picone.jpg"),
              )),
              Expanded(
                  child: Container(
                child: Image.asset("images/pictwo.jpg"),
              )),
              Expanded(
                  child: Container(
                child: Image.asset("images/picthree.jpg"),
              )),
              Expanded(
                child: Container(
                    child: Image.network(
                        "https://cdn.pixabay.com/photo/2015/03/26/09/47/sky-690293_960_720.jpg")),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  //color: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    foregroundColor: Colors.yellow,
                    backgroundImage: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/social-messaging-productivity-6/128/profile-male-circle2-512.png"),
                  ),
                ),
              ),
              Expanded(
                child: Container(

                  child: CircleAvatar(
                      radius: 50,
                      foregroundColor: Colors.white,
                      backgroundImage: AssetImage("images/picfour.jpg")),
                ),
              ),
              Expanded(
                child: Container(

                  child: CircleAvatar(
                    radius: 50,
                    foregroundColor: Colors.blue,
                    backgroundImage: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/social-messaging-productivity-6/128/profile-male-circle2-512.png"),
                  ),
                ),
              ),
              Expanded(
                child: Container(

                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        "https://cdn3.iconfinder.com/data/icons/social-messaging-productivity-6/128/profile-male-circle2-512.png"),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child:  FadeInImage.assetNetwork(placeholder: "images/source.gif",
                    image: "https://cdn3.iconfinder.com/data/icons/social-messaging-productivity-6/128/profile-male-circle2-512.png")
                ,
              )


            ],
          )
        ],
      ),
    );
  }
}
