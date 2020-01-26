import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return  Scaffold(
        key: scaffoldKey,

        appBar: AppBar(
        title: Text("Contacts"),
    backgroundColor: Colors.redAccent,
    ),
    body: Container(
    color: Colors.white,
    height: double.infinity,
    child: Column(
    children: <Widget>[
    Card(
    color: Colors.blueAccent,
    elevation: 20,
    margin: EdgeInsets.all(10),
    child: ListTile(
    leading: CircleAvatar(
    child: Icon(Icons.person_pin),
    radius: 10,
    ),
    title:
    Text("Kennedy Black", style: TextStyle(color: Colors.white)),
    subtitle:
    Text("345 245 34", style: TextStyle(color: Colors.white)),
    trailing: Icon(Icons.delete),
    ),
    ),
    Card(
    color: Colors.blueAccent,
    elevation: 20,
    margin: EdgeInsets.all(10),
    child: ListTile(
    leading: CircleAvatar(
    child: Icon(Icons.person_pin),
    radius: 10,
    ),
    title: Text("John Greens", style: TextStyle(color: Colors.white)),
    subtitle:
    Text("300 245 34", style: TextStyle(color: Colors.white)),
    trailing: Icon(Icons.delete),
    ),
    ),
    Card(
    color: Colors.blueAccent,
    elevation: 20,
    margin: EdgeInsets.all(10),
    child: ListTile(
    leading: CircleAvatar(
    child: Icon(Icons.person_pin),
    radius: 10,
    ),
    title:
    Text("Sarah Lorans", style: TextStyle(color: Colors.white)),
    subtitle:
    Text("345 245 34", style: TextStyle(color: Colors.white)),
    trailing: Icon(Icons.delete),
    ),
    ),
    Expanded(
    child: Image.asset("images/img.jpg"),
    ),
    Expanded(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
     FloatingActionButton(

    child: Icon(Icons.arrow_back),
    heroTag: "btn1",
    backgroundColor: Colors.blueAccent,
    onPressed: () {
    NextPage(context);
    }
    ),
    FloatingActionButton(
    child: Icon(Icons.arrow_forward),
    heroTag: "btn2",
    backgroundColor: Colors.blueAccent,
    onPressed: () {
      NextPage(context);
    }
    )
    ],
    ),
    )
    ],
    ),
    ));
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
  }));}