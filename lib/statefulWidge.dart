import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var text = "hello rabii3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: Row(
          children: [
            GestureDetector(
              child: Container(
                child: Text("press me"),
                margin: EdgeInsets.only(left: 10, right: 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.teal,
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              onTap: () {
                setState(() {
                  text = "Wilkommen";
                });
              },
              onDoubleTap: () {
                setState(() {
                  text = "Schreiben Sie";
                });
              },
            ),
            Text("$text")
          ],
        ),
      ),
    );
  }
}
