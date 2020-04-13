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

bool oui = false;

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
                  color:(oui) ? Colors.grey[900] : Colors.green,
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
              new IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {print("On a appuyé sur le bouton");

                  setState(() {
                    oui = !oui;
                  });
                  }),
              new FlatButton(
                  onPressed: boutonAppuye,
                  child: new Text('Appuyer moi!')),
              new Container(
                height: largeur/5,
                color: Colors.teal,
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Icon(Icons.thumb_up,
                    color: Colors.white,
                    size: largeur/10),
                    new Icon(Icons.thumb_down,
                        color: Colors.white,
                        size: largeur/10),
                    new Icon(Icons.palette,
                        color: Colors.white,
                        size: largeur/10),
                    new Icon(Icons.directions_bike,
                        color: Colors.white,
                        size: largeur/10),
                  ],
                ),
              )
            ],
          ),
        ),
      floatingActionButton: new FloatingActionButton(
          onPressed: boutonAppuye,
      elevation: 8.0,
      tooltip: "Changer oui",
      child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
void boutonAppuye(){
    setState(() {
      oui = !oui;
    });
}
}