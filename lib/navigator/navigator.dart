import 'dart:ui';

import 'package:awesome_app/navigator/one.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var username;
  var phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return One();
                }));
              },
              child: Text("Go to page one"),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                // el rout "two" sna3neh fl main app fl el route: ta7t el home
                Navigator.of(context).pushNamed("two");
              },
              child: Text("Go to page two"),
            ),
          ),
          Center(
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("three");
              },
              child: Text("Go to page three"),
            ),
          )
        ],
      ),
    );
  }
}
