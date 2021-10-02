//import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var names;
  List l = ["RBJ", "el Byby", "zou", "hope", "ach"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Container(
        color: Colors.teal,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: DropdownButton(
          icon: Icon(
            Icons.list,
            color: Colors.white,
          ),
          iconSize: 40,
          dropdownColor: Colors.teal[400],
          underline: Divider(
            thickness: 0.00001,
          ),
          isExpanded: true,
          hint: Container(
            width: double.infinity,
            child: Text("Select a name",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
          ),
          items: ["rabii3", "may", "naziha", "amal", "ahmed"]
              .map((e) => DropdownMenuItem(
                    child: Container(
                      width: double.infinity,
                      child: Text(
                        "$e",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    value: e,
                  ))
              .toList(),
          onChanged: (val) {
            print("$val");
            setState(() {
              names = val.toString();
            });
          },
          value: names,
        ),
      )),
    );
  }
}
