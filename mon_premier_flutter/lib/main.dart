import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Les widgets Basiques",
      theme: new ThemeData(
          primarySwatch: Colors.red
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }

}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }

}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('salut'),
        leading: new Icon(Icons.account_circle),
        actions: <Widget>[
          new Icon(Icons.access_alarm, size: 50),
          new Icon(Icons.golf_course, color: Colors.indigo.shade800,size: 50,),
          new Icon(Icons.directions_bike),
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      body: new Container(
        color: Colors.indigo,
        //height: MediaQuery.of(context).size.height/2,
        //width: MediaQuery.of(context).size.width /3,
        margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
        child: new Center(
          child: new Card(
            elevation: 10.0,
            color: Colors.teal,
            child: new Container(
              width: MediaQuery.of(context).size.width/1.5,
              height: 250.0,
              child: new Image.network("https://flutter.dev/assets/flutter-lockup-c13da9c9303e26b8d5fc208d2a1fa20c1ef47eb021ecadf27046dea04c0cebf6.png",
              fit: BoxFit.cover,
              ),
            ),
          )
          ),
        ),
    );
  }}