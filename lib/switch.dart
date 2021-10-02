import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("do you want notification ?"),
              Switch(
                  // activeColor: Colors.green,
                  // activeTrackColor: Colors.blue,
                  // inactiveThumbColor: Colors.grey[700],
                  activeThumbImage: new NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcTHkrOLf-63KAGoKS07XMAjycrRoTU4RTww&usqp=CAU"),
                  inactiveThumbImage: new NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Circle-icons-hourglass.svg/2048px-Circle-icons-hourglass.svg.png'),
                  value: active,
                  onChanged: (val) {
                    setState(() {
                      active = val;
                    });
                  })
            ],
          ),
          SwitchListTile(
              title: Text("hello"),
              value: active,
              onChanged: (val) {
                setState(() {
                  active = val;
                });
              })
        ],
      ),
    ));
  }
}
