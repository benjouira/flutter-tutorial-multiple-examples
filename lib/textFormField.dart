import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  late PageController pc;

  List listImag = [
    {"url": "./images/1.jpg"},
    {"url": "./images/2.jpg"},
    {"url": "./images/3.jpg"},
    {"url": "./images/4.jpg"},
    {"url": "./images/5.jpg"},
  ];
  @override
  void initState() {
    pc = new PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Name ",
                  hintStyle: TextStyle(color: Colors.grey[300]),
                  hintMaxLines: 3,
                  prefixIcon: Icon(Icons.person),
                  // prefixStyle: TextStyle(color: Colors.green)
                  suffix: Text("16 caracter max"),
                  labelText: "Write your name hear",

                  //besh t'activi el filled
                  filled: true,
                  fillColor: Colors.teal[50]),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "age",
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2))),
              enabled: false,
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 2))),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.green, width: 2))),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black, width: 2))),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Icon(Icons.alarm),
                    prefixIcon: Icon(Icons.alarm),
                    suffixIcon: Icon(Icons.alarm)),
              ))
        ],
      ),
    );
  }
}
