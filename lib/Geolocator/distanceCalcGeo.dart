import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class DistanceGeo extends StatefulWidget {
  DistanceGeo({Key? key}) : super(key: key);

  @override
  _DistanceGeoState createState() => _DistanceGeoState();
}

class _DistanceGeoState extends State<DistanceGeo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
          onPressed: () {
            var distanceBetween = Geolocator.distanceBetween(
                34.738633, 10.529509, 34.733378, 10.709941);
            var distanceKm = distanceBetween / 1000;
            print(distanceKm);
          },
          child: const Text("calculate distance between two locations")),
    );
  }
}
