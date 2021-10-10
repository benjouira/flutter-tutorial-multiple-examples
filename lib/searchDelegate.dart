import 'dart:ui';

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
        appBar: AppBar(title: Text("Home Page"), actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              })
        ]),
        body: Center(
          child: Text("rabii3"),
        ));
  }
}

class DataSearch extends SearchDelegate {
  List names = ["Rabii3", "May", "Rania", "Mahmoud", "Kais", "Rabii3", "Maha"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            // el query hiya variable teb3a el searchDelegate yetkhazan fiha
            // elli tektbou fl search field
            query = "";
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          // Navigator.of(context).pop();
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filterNames =
        names.where((element) => element.contains(query)).toList();
    // thama el startWith w thama el contains ! ya3nou el 7arf mawjoud fi ay blasa mch bedharoura tebda bih

    return ListView.builder(
        itemCount: query == "" ? names.length : filterNames.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              query = query == "" ? names[i] : filterNames[i];
              showResults(context);
            },
            child: Container(
                color: Colors.brown[100],
                padding: EdgeInsets.all(10),
                child: query == ""
                    ? Text(
                        "${names[i]}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )
                    : Text(
                        "${filterNames[i]}",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
          );
        });
  }
}
