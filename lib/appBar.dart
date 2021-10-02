import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var price = 900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm_add_rounded)),
        ],
        backgroundColor: Colors.red,
        brightness: Brightness
            .dark, // hedhiya el loun mte3 el batrie w reseau w wifi fl telifoun lfou9
        elevation: 10,
        shadowColor: Colors.red,
      ),
    );
  }
}
