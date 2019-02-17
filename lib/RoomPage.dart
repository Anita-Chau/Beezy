import 'dart:async';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> main() async {
  final FirebaseApp app = await FirebaseApp.configure(name: 'db2',
      options: const FirebaseOptions(
          googleAppID: '1:212818390361:android:b4140e8afbbda61e',
          gcmSenderID: '212818390361',
          databaseURL: 'https://beezy-7154e.firebaseio.com/'
      )
  );
}

class Room extends StatelessWidget {
  Room({this.app});
  final FirebaseApp app;

  saveData() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar (title: new Text("BeeZy"), backgroundColor: Colors.amber),
        body: new Container(
            color: Colors.black12,
            padding: new EdgeInsets.all(20.0),
            child: new Center(
                child: new Column(
                  children: <Widget>[
                    StreamBuilder(
                      stream: FirebaseDatabase()
                    )
                    new Text("Capacity Goes Here"),
                    new Icon(Icons.bug_report, size: 150.0, color: Colors.yellow),
                    new RaisedButton(
                        onPressed: (){
                          Navigator.pop(context);
                          saveData();
                        },
                        child: Text("Go Back!")
                    ),
                  ],
                )
            )
        )
    );
  }
}