import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  bool win = false;
  String clubs = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Liverpool"),
          Checkbox(
              value: win,
              onChanged: (val) {
                setState(() {
                  win = val!;
                });
              }),
          CheckboxListTile(
              title: Text("we win that game ?"),
              subtitle: Text(
                "LFC",
                style: TextStyle(fontSize: 10),
              ),
              secondary: Icon(Icons.sports_score),
              selected: win,
              contentPadding: EdgeInsets.symmetric(horizontal: 5),
              value: win,
              onChanged: (val) {
                setState(() {
                  win = val!;
                });
              }),
          Row(
            children: [
              Text("who win ?"),
              Radio(
                  value: "LFC",
                  groupValue: clubs,
                  onChanged: (val) {
                    setState(() {
                      clubs = val.toString();
                    });
                  }),
              Radio(
                  value: "DRAW",
                  groupValue: clubs,
                  onChanged: (val) {
                    setState(() {
                      clubs = val.toString();
                    });
                  }),
              Radio(
                  value: "MCY",
                  groupValue: clubs,
                  onChanged: (val) {
                    setState(() {
                      clubs = val.toString();
                    });
                  }),
            ],
          ),
          RadioListTile(
              title: Text("Liverpool"),
              subtitle: Text("LFC"),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'LFC',
              groupValue: clubs,
              onChanged: (val) {
                setState(() {
                  clubs = val.toString();
                });
              }),
          RadioListTile(
              title: Text("DRAW"),
              subtitle: Text("Draw"),
              //ta7didmaken el radio button ! left or right
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'DRAW',
              groupValue: clubs,
              onChanged: (val) {
                setState(() {
                  clubs = val.toString();
                });
              }),
          RadioListTile(
              title: Text("Man City"),
              subtitle: Text("MCY"),
              controlAffinity: ListTileControlAffinity.trailing,
              value: 'MCY',
              groupValue: clubs,
              onChanged: (val) {
                setState(() {
                  clubs = val.toString();
                });
              })
        ],
      ),
    );
  }
}
