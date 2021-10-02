import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull> {
  var price = 900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListTile(
          title: Text("iphone 13"),
          subtitle: Text("Apple"),
          leading: Icon(Icons.mobile_friendly_rounded),
          trailing: Text("Price $price\$"),
          tileColor: Colors.green,
          onTap: () {
            setState(() {
              if (price < 1400)
                price += 100;
              else {
                print("Max price selected ");
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Max price selected "),
                        content: Text("the maximum price is already selected "),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Close"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              }
            });
          },
        ));
  }
}
