import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  int crntIndex = 0;
  List<Widget> pages = [
    Container(
      child: Text("Rabii3"),
      alignment: Alignment.center,
      color: Colors.red,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      child: Text("Rabii3"),
      alignment: Alignment.center,
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      child: Text("Rabii3"),
      alignment: Alignment.center,
      color: Colors.purple,
      width: double.infinity,
      height: double.infinity,
    ),
    Container(
      child: Text("Rabii3"),
      alignment: Alignment.center,
      color: Colors.teal,
      width: double.infinity,
      height: double.infinity,
    ),
  ];
  //var a, r, g, b = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[400],
        items: [
          BottomNavigationBarItem(label: "Back", icon: Icon(Icons.arrow_left)),
          BottomNavigationBarItem(label: "Next", icon: Icon(Icons.arrow_right)),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.green,
        // currentIndex: crntIndex,
        onTap: (index) {
          setState(() {
            if (index == 1 && crntIndex < 3)
              crntIndex++;
            else if (index == 0 && crntIndex > 0) crntIndex--;
          });
        },
      ),
      body: pages.elementAt(crntIndex),
    );
  }
}
