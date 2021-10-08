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

  late ScrollController sCont;
  @override
  void initState() {
    sCont = new ScrollController();
    sCont.addListener(() {
      print(sCont.offset);
    });
    super.initState();
  }

  Color selectColors(int index) {
    if (index % 3 == 0) return Colors.teal;
    if (index % 3 == 1) return Colors.red;
    if (index % 3 == 2) return Colors.amber;
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: ListView(
          controller: sCont,
          children: [
            IconButton(
                onPressed: () {
                  sCont.jumpTo(sCont.position.maxScrollExtent + 60);
                },
                icon: Icon(Icons.arrow_downward)),
            ...List.generate(
                20,
                (index) => Container(
                      margin: EdgeInsets.all(10),
                      child: Text("Container $index"),
                      color: selectColors(index),
                      height: 100,
                      width: double.infinity,
                    )),
            IconButton(
                onPressed: () {
                  // sCont.jumpTo(sCont.position.minScrollExtent);
                  sCont.animateTo(sCont.position.minScrollExtent,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                icon: Icon(Icons.arrow_upward))
          ],
        ));
  }
}
