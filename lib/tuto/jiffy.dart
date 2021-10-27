import 'package:jiffy/jiffy.dart';
import 'package:flutter/material.dart';

class jiffyClass extends StatefulWidget {
  jiffyClass({Key? key}) : super(key: key);

  @override
  _jiffyClassState createState() => _jiffyClassState();
}

class _jiffyClassState extends State<jiffyClass> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("jiffy date"),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(
            child: const Text("show Date time"),
            onPressed: () {
              print(Jiffy(date).MMMM);
              print(Jiffy(date).format(" EEEE | DD-MMMM-YYYY"));
              print(date);
              print(Jiffy('1993-3-19').fromNow());
              print("Event start in ${Jiffy().endOf(Units.DAY).fromNow()}");
            }),
      ),
    );
  }
}
