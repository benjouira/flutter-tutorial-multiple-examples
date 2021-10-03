import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  late PageController pc;

  List listImag = [
    {"url": "./images/1.jpg"},
    {"url": "./images/2.jpg"},
    {"url": "./images/3.jpg"},
    {"url": "./images/4.jpg"},
    {"url": "./images/5.jpg"},
  ];
  @override
  void initState() {
    pc = new PageController(
      initialPage: 0,
    );
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
            height: 200,
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
          ),
          MaterialButton(
              child: Text("Go to page 3"),
              onPressed: () {
                pc.animateToPage(2,
                    duration: Duration(seconds: 1), curve: Curves.easeIn);
              }),
          Container(
            height: 200,
            child: PageView.builder(
              itemCount: listImag.length,
              itemBuilder: (context, index) {
                return Image.asset(listImag[index]["url"]);
              },
            ),
          )
        ],
      ),
    );
  }
}
