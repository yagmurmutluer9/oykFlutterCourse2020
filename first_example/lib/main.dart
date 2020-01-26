import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Sky"),
        ),
        body: moonTypes(),
      ),
    );
  }
}

class moonTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Text(
            "Phase of Moons",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(child: Image.asset("images/hilal.jpg")),
              ),
              Expanded(
                child: Container(child: Image.asset("images/ilk_dort.jpg")),
              ),
              Expanded(
                child: Container(child: Image.asset("images/dolunay.jpg")),
              ),
              Expanded(
                child: Container(child: Image.asset("images/son_dort.jpg")),
              ),
              Expanded(
                child: Container(child: Image.asset("images/son_hilal.jpg")),
              )
            ],
          ),
          Text("The Sun", style: TextStyle(color: Colors.white, fontSize: 20)),
          Row(
            children: <Widget>[
              Expanded(
                child: (Container(
                  width: double.infinity,
                  height: 200,
                  child: FadeInImage.assetNetwork(
                      placeholder: "images/progress-gif.gif",
                      image:
                          "https://d2r55xnwy6nx47.cloudfront.net/uploads/2018/07/SolarFull_SeanDoran_2880FullwidthLede.jpg"),
                )),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: FlatButton(
                    onPressed: () {
                      debugPrint("Flat button is clicked!");
                    },
                    color: Colors.grey,
                    child: Text("Flat Button!"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
