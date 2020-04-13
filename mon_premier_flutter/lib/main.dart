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
    double largeur = MediaQuery.of(context).size.width;
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
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Text("Salut les codeur",style: new TextStyle(
                  color: Colors.grey,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic
              ),
              ),
              new Card(
                child: new Container(
                  width: MediaQuery.of(context).size.width /1.5,
                  height: 200.0,
                  child: new Image.asset('',
                      fit: BoxFit.cover
                  ),
                ),
              ),
              new Container(
                height: largeur/5,
                color: Colors.red,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.yellow,
                    ),
                    new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.blue,
                    ),
                    new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.indigo,
                    ),
                    new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.teal,
                    ),new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.teal,
                    ),new Container(
                      height: largeur/8,
                      width: largeur/8,
                      color: Colors.teal,
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }}