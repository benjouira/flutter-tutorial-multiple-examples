import 'package:flutter/material.dart';

class FontChange extends StatefulWidget {
  FontChange({Key? key}) : super(key: key);

  @override
  _FontChangeState createState() => _FontChangeState();
}

class _FontChangeState extends State<FontChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(
              "Old Font",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "New Font ",
              style: TextStyle(fontSize: 20, fontFamily: "Pacifico"),
            )
          ],
        ),
      ),
    );
  }
}
