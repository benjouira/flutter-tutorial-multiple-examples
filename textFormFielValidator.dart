import 'dart:ui';

import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  GlobalKey<FormState> frmStatkey = new GlobalKey<FormState>();

  send() {
    var formData = frmStatkey.currentState;
    if (formData!.validate()) {
      print("valid");
    } else {
      print("Not valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Form(
        key: frmStatkey,
        child: Column(
          children: [
            TextFormField(
              validator: (text) {
                if (text!.length < 3) {
                  return "verif the number of letter";
                }
                return null;
              },
            ),
            MaterialButton(
              onPressed: send,
              child: Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}
