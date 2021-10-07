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
  var valSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Slider(
              min: 0,
              max: 100,
              value: valSlider,
              onChanged: (val) {
                setState(() {
                  valSlider = val;
                  print(val);
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.grey,
            )
          ],
        ));
  }
}
