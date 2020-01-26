import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyApp2();
}

class MyApp2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: AppBar(),
          body: Container(

            child: Row(

                children: <Widget>[
                Column(
                  children: <Widget>[
                    FloatingActionButton (

                      backgroundColor: Colors.deepOrangeAccent,
                      child: Icon(
                        Icons.add_call,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton (
                          backgroundColor: Colors.teal,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton (
                          backgroundColor: Colors.green,
                          child: Icon(
                            Icons.account_circle,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton (
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.mail,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton (
                          backgroundColor: Colors.yellow,
                          child: Icon(
                            Icons.youtube_searched_for,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        FloatingActionButton (
                          backgroundColor: Colors.lime,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),


                  ],


                ),

                Column(

                  children: <Widget>[
                    FloatingActionButton (
                      backgroundColor: Colors.pink,
                      child: Icon(
                        Icons.wallpaper,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),


                  ],


                ),
                Column(
                  children: <Widget>[
                    FloatingActionButton (
                      backgroundColor: Colors.lightBlueAccent,
                      child: Icon(
                        Icons.radio,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),


                  ],


                ),
                Column(
                  children: <Widget>[
                    FloatingActionButton (
                      backgroundColor: Colors.black38,
                      child: Icon(
                        Icons.watch_later,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),


                  ],


                ),
                Column(
                  children: <Widget>[
                    FloatingActionButton (
                      backgroundColor: Colors.deepOrangeAccent,
                      child: Icon(
                        Icons.add_call,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),


                ]

            ),
          )
          ),
        );

//            Row(  // center, container, row and column
//              mainAxisAlignment: MainAxisAlignment.spaceAround, // x axis
//              children: <Widget>[
//                FloatingActionButton (
//                  backgroundColor: Colors.pink,
//                  child: Icon(
//                    Icons.account_balance,
//                    color: Colors.white,
//                    size: 20,
//                  ),
//
//
//                ),
//                FloatingActionButton (
//                  backgroundColor: Colors.yellow,
//
//                  child: Icon(
//                    Icons.account_circle,
//                    color: Colors.white,
//                    size: 20,
//                  ),
//
//                ),
//                FloatingActionButton (
//                  backgroundColor: Colors.teal,
//                  child: Icon(
//                    Icons.adjust,
//                    color: Colors.white,
//                    size: 20,
//                  ),
//                ),
//                FloatingActionButton (
//                  backgroundColor: Colors.deepOrangeAccent,
//                  child: Icon(
//                    Icons.add_call,
//                    color: Colors.white,
//                    size: 20,
//                  ),
//                ),
//              ],
//            ),
  }
}

//void main() {
//  runApp(new MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.pink,
//      ),
//      home: new Scaffold(
//          appBar: AppBar(
//              title: Text("Welcome",
//                  style: TextStyle(fontSize: 32, color: Colors.white))),
//
//     floatingActionButton: FloatingActionButton(
//       onPressed: () {
//         debugPrint("Floating Action button is clicked!");
//       },
//       child: Icon(
//
//         Icons.add,
//         size: 25,
//         color: Colors.white,
//
//
//       ),
//     ),
//
//      )
//  )
//  );
//
//}

//void main() {
//  runApp(new MaterialApp(
//    home: HomePage()
//  ));
//}
//
//// stl and enter
//class HomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.deepOrange,
//      child: Text("This is a text", style: TextStyle(color: Colors.tealAccent)),
//    );
//  }
//}
//
//
//// stf and enter
//
//class HomePageTwo extends StatefulWidget {
//  @override
//  _HomePageTwoState createState() => _HomePageTwoState();
//}
//
//class _HomePageTwoState extends State<HomePageTwo> {
//  @override
//  Widget build(BuildContext context) {
//    return Container();
//  }
//}
