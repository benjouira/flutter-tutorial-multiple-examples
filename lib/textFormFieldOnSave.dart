import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var username;
  var phone;

  GlobalKey<FormState> frmStatkey = new GlobalKey<FormState>();

  send() {
    var formData = frmStatkey.currentState;
    if (formData!.validate()) {
      //mohimat el formData.save() hiya temchi tkhdemli el methode onSaved() elli
      // mawjoudin fl form
      formData.save();
      print("user name : $username");
      print("phone : $phone");
    } else {
      print("Non valid");
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
        autovalidateMode: AutovalidateMode.always,
        key: frmStatkey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (text) {
                username = text;
              },
              validator: (text) {
                if (text!.length < 6) {
                  return "number of letter must be bigger than 6 character";
                } else if (text.length > 12) {
                  return "number of letter must be lower than 12 character";
                }
                return null;
              },
            ),
            TextFormField(
              onSaved: (text) {
                phone = text;
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              validator: (text) {
                if (text!.length != 8) {
                  return "number of phone must be 8 character";
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
