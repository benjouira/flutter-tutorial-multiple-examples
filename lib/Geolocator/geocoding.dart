import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class GeoCodingClass extends StatefulWidget {
  GeoCodingClass({Key? key}) : super(key: key);

  @override
  _GeoCodingClassState createState() => _GeoCodingClassState();
}

class _GeoCodingClassState extends State<GeoCodingClass> {
  Future showLocation() async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(52.2165157, 6.9437819);
    print(placemarks[0].country);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextButton(
        child: const Text("show location"),
        onPressed: () {
          showLocation();
        },
      )),
    );
  }
}
