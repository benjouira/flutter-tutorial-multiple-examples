import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  late PageController pc;

  TextEditingController username = new TextEditingController();

  late String ch = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Username", border: OutlineInputBorder()),
                controller: username,
                onTap: () {
                  print("on tap");
                },
                onChanged: (value) {
                  setState(() {
                    ch = value;
                  });
                },
                // wa9t tkamel testa3mal el text feild w t7eb tfar8ou
                // el action ma temchy ken ma tclicki enter wela 3la el icon elli louta 3allimin eli 7kina 3lih fl partie lawla
                onEditingComplete: () {
                  username.text = "";
                },
              )),
          TextButton(
              onPressed: () {
                print(username.text);
              },
              child: Text("Print Text field")),
          Text(ch),
        ],
      ),
    );
  }
}
