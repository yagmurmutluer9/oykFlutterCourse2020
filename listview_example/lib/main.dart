import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("Listview Example"),
          ),
          body: bodyLayout()

      ),
    );
  }

}

class bodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return myListView3(context);
  }


}

Widget myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
              radius: 15,
              backgroundColor: Colors.red,),
            title: Text("John Walker"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
              radius: 15,
              backgroundColor: Colors.red,),

            title: Text("John Wers"),
            trailing: Icon(Icons.arrow_forward_ios),

          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
              radius: 15,
              backgroundColor: Colors.red,),

            title: Text("Lisa Qert"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
              radius: 15,
              backgroundColor: Colors.red,),

            title: Text("Ken Wens"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),
              radius: 15,
              backgroundColor: Colors.red,),

            title: Text("Olly Walker"),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ]).toList(),
  );
}

Widget myListView2(BuildContext context) {
  final countries = ["Turkey", "Germany", "America", "Spain", "Greek",
    "Franse", "Korea", "China", "Japan", "Azarbeycan"];



  return ListView.builder(itemCount: countries.length, itemBuilder: (context, index){

    return ListTile(
      title: Text(countries[index]),
      subtitle: Text("Country"),
      onTap: () => debugPrint("I am clicked!")
    );


  });

}


Widget myListView3 (BuildContext context) {



  return Container(
    child: Column(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.green,
          child: ListTile(

            leading: CircleAvatar(child: Icon(Icons.person), radius: 10,),
            title: Text("John Smith"),
            subtitle: Text("Oxford"),
            trailing: Icon(Icons.arrow_forward) ,
          ),
        ),
        Divider(
          color: Colors.black,
          height: 30,

        ),
        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.green,
          child: ListTile(

            leading: CircleAvatar(child: Icon(Icons.person), radius: 10,),
            title: Text("John Smith"),
            subtitle: Text("Oxford"),
            trailing: Icon(Icons.arrow_forward) ,
          ),
        ),    Divider(
          color: Colors.black,
          height: 30,

        ),

        Card(
          margin: EdgeInsets.all(10),
          elevation: 20,
          color: Colors.green,
          child: ListTile(

            leading: CircleAvatar(child: Icon(Icons.person), radius: 10,),
            title: Text("John Smith"),
            subtitle: Text("Oxford"),
            trailing: Icon(Icons.arrow_forward) ,
          ),
        ),
        Divider(
          color: Colors.black,
          height: 30,

        ),
      ],
    )
  );




}
