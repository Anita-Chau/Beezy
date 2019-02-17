import 'package:flutter/material.dart';
import './RoomPage.dart' as roompg;

void main() {
  runApp(new MaterialApp(
    home: new Beezy()
  ));
}

class Beezy extends StatefulWidget {

    @override
  BeezyState createState() => new BeezyState();
}

class BeezyState extends State<Beezy> {

  final TextEditingController controller = new TextEditingController();
  PageController pgcontroller = PageController();

  @override
  void initState() {
    super.initState();
    pgcontroller = new PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  String result = "";
  bool _pressed = false;

//  void doSomething(){
//    setState(() {
//      _pressed = true;
//      PageView(
//        children: <Widget>[
//          new roompg.Room()
//        ],
//      );
//    });
//  }

  void doSomething(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => roompg.Room()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: new AppBar (title: new Text("BeeZy"), backgroundColor: Colors.amber),
      body: new Container( color: Colors.black12,
        child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new TextField( //cursorColor: Colors.white,
                  decoration: new InputDecoration(
                      hintText: "Enter a building name here..."
                  ),
                  onSubmitted: (String searchTerm){
                    setState(() {

                    });
                    controller.text = "";
                  },
                  controller: controller,
                ),
                new RaisedButton(
                    child: new Text("River Building Rm1201",
                        style: new TextStyle(
                            color: Colors.black,
                            fontStyle: (_pressed ? FontStyle.italic : FontStyle.normal),
                            fontSize: 20.0)
                    ),
                    color: Colors.white,
                    onPressed: doSomething
                ),
                new RaisedButton(
                    child: new Text("Azrieli Theatre",
                        style: new TextStyle(
                            color: Colors.black,
                            fontStyle: (_pressed ? FontStyle.italic : FontStyle.normal),
                            fontSize: 20.0)
                    ),
                    color: Colors.white,
                    onPressed: doSomething
                ),
                new RaisedButton(
                    child: new Text("MacKenzie Building",
                        style: new TextStyle(
                            color: Colors.black,
                            fontStyle: (_pressed ? FontStyle.italic : FontStyle.normal),
                            fontSize: 20.0)
                    ),
                    color: Colors.white,
                    onPressed: doSomething
                )
                //new Text(result)
              ],
            )
        )
      )
    );
  }
}
