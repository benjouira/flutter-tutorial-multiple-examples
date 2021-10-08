import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          centerTitle: true,
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        child: Center(
                            child: TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("three");
                                },
                                child: Text(
                                  "Bottom sheet",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ))),
                        height: 100,
                        color: Colors.grey,
                      );
                    });
              },
              child: Text("show Modal Buttom Sheet")),
        ));
  }
}
