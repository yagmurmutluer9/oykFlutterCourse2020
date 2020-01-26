import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Buton Types"),
        ),
        body: ButtonType(),
      ),
    );
  }
}

class ButtonType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: 500,
      height: 500,
      // symmetric (horizontal : 50, vertical)

      color: Colors.green,
      child: Column(
        children: <Widget>[
          Text("Types of Button", style: TextStyle (
            color: Colors.white,
            fontSize: 18,
            fontStyle: FontStyle.italic,

          ),),
          RaisedButton(
            onPressed: () {
              debugPrint("Raised button (first) is clicked!");
            },
            color: Colors.red,
            child: Text("Raised Button 1 ", style:  TextStyle(color: Colors.white),),
          ),
          RaisedButton(
            onPressed: () => debugPrint("Raised button (second) is clicked!"),
            color: Colors.blue,
            child: Text("Raised Button 2", style: TextStyle(color: Colors.white)),
          ),
          RaisedButton(
            onPressed: () {
              anotherFunction();
            },
            color: Colors.deepPurpleAccent,
            child: Text("Raised Button 3", style: TextStyle(color: Colors.white)),
          ),
          IconButton(
            color: Colors.black,
            icon:
                Icon(Icons.youtube_searched_for, color: Colors.white, size: 40),
            onPressed: () {
              debugPrint("Icon Button is clicked!");
            },
          ),
          FlatButton(
            color: Colors.deepOrangeAccent,

            onPressed: () {
              debugPrint("Flat Button is clicked!");
            },
            child: Text("Flat Button" ,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
                )
            ),

          )
        ],
      ),
    );
  }
}

void anotherFunction() {
  debugPrint("Raised button (third) is clicked!");
}
