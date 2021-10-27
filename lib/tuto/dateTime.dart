// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DateTimeClass extends StatefulWidget {
  const DateTimeClass({Key? key}) : super(key: key);

  @override
  _DateTimeClassState createState() => _DateTimeClassState();
}

class _DateTimeClassState extends State<DateTimeClass> {
  DateTime dateOne = DateTime.now();
  DateTime dateTwo = DateTime.now().add(const Duration(days: 10));
  DateTime dateThree = DateTime.now().subtract(const Duration(days: 10));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateTime widget"),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
            child: const Text("show Date time"),
            onPressed: () {
              print(dateOne.isBefore(dateTwo));
              print(dateOne.isBefore(dateThree));
              print(dateOne.isAfter(dateThree));
            }),
      ),
    );
  }
}
