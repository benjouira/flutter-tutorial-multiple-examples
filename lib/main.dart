import 'package:awesome_app/navigator/three.dart';
import 'package:awesome_app/navigator/two.dart';
import 'package:flutter/material.dart';
// import 'package:awesome_app/navigator/navigator.dart';
import 'package:awesome_app/searchDelegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //joz2 el bayanet
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstStatfull(),
      routes: {
        "two": (context) => Two(),
        "three": (context) => Three(),
        "home": (context) => FirstStatfull()
      },
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
        body: Column(children: [
          Center(
            child: MaterialButton(
              onPressed: () {},
              child: Text(" m a t e r i e l "),
              color: Colors.teal,
              textColor: Colors.blue[100],
              elevation: 10,
              splashColor: Colors.teal,
              hoverColor: Colors.teal[300],
              minWidth: 50,
            ),
          ),
          Container(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.adb_rounded)),
            color: Colors.green,
          ),
          InkWell(
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("./images/1.jpg")),
                )),
            onTap: () {
              print("hello");
            },
          ),
          GestureDetector(
            child: Container(
              child: Text(
                "Gester button",
                style: TextStyle(color: Colors.yellow[100]),
              ),
              width: 100,
              height: 100,
              color: Colors.red,
              alignment: Alignment.center,
            ),
            onDoubleTap: () {
              print("<3");
            },
          )
        ]));
  }
}
