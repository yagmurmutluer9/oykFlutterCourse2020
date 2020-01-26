import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Example App",
        home: app_bar());
  }
}

class app_bar extends StatelessWidget {
  app_bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text("Demo"),
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            tooltip: "Next Page",
            onPressed: () {
              NextPage(context);
            },
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text("Person"),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search), title: Text("Search")),
        BottomNavigationBarItem(
            icon: Icon(Icons.accessible), title: Text("Access")),
      ]),
    );
  }
}

void NextPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("new page"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }));
}
