import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  late PageController pc;

  @override
  void initState() {
    pc = new PageController(initialPage: 2, viewportFraction: 0.75);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: PageView(
              // scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [
                Image.asset(
                  "./images/1.jpg",
                ),
                Image.asset("./images/2.jpg"),
                Image.asset("./images/3.jpg"),
                Image.asset("./images/4.jpg"),
                Image.asset("./images/5.jpg"),
              ],
              controller: pc,
              onPageChanged: (index) {
                print(index);
              },
            ),
          )
        ],
      ),
    );
  }
}
