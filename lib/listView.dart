import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Container(
          width: 200,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(221, 142, 88, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(112, 138, 129, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(229, 209, 184, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(194, 149, 110, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(43, 33, 41, 1),
              )
            ],
          ),
        ),
        Container(
          width: 200,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(221, 142, 88, 1),
              ),
              Container(
                width: 50,
                height: 220,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 50,
                      height: 200,
                      color: Color.fromRGBO(221, 142, 88, 1),
                    ),
                    Container(
                      width: 50,
                      height: 200,
                      color: Color.fromRGBO(112, 138, 129, 1),
                    ),
                    Container(
                      width: 50,
                      height: 200,
                      color: Color.fromRGBO(229, 209, 184, 1),
                    ),
                    Container(
                      width: 50,
                      height: 200,
                      color: Color.fromRGBO(194, 149, 110, 1),
                    ),
                    Container(
                      width: 50,
                      height: 200,
                      color: Color.fromRGBO(43, 33, 41, 1),
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(229, 209, 184, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(194, 149, 110, 1),
              ),
              Container(
                width: 100,
                height: 200,
                color: Color.fromRGBO(43, 33, 41, 1),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
