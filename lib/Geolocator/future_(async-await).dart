// ignore_for_file: file_names

import 'package:flutter/material.dart';

class FutureFunction extends StatefulWidget {
  FutureFunction({Key? key}) : super(key: key);

  @override
  _FutureFunctionState createState() => _FutureFunctionState();
}

class _FutureFunctionState extends State<FutureFunction> {
  Future getDataAsync() async {
    var a;
    print("Hello 1");
    Future.delayed(Duration(seconds: 3), () {
      a = "Hello 2";
      print("sorry i am late ! $a");
    });
    print("Hello 3");
  }

  Future getDataAwait() async {
    var a;
    print("Hello 1");
    await Future.delayed(Duration(seconds: 3), () {
      a = "hello 2";
      print("sorry i am late ! $a");
    });
    print("sorry i can't print until await function is finished !");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  getDataAsync();
                },
                child: const Text("active async function !")),
            Divider(),
            TextButton(
                onPressed: () {
                  getDataAwait();
                },
                child: const Text("active await function !")),
            Divider(),
            const Text(
              "el async function tkhalic tkamel truni el code w wa9t takamel hiya tab3athlak el ntija ",
              style: TextStyle(color: Colors.green),
            ),
            const Text(
                "el await ma tkhalikech tet3ada ll bloc eli ba3d ken ma tkamel truni el function kemla",
                style: TextStyle(color: Colors.red)),
            const Text(
                "el await nesta3mlouha m3a el async bech ma net3adou ll code eli ba3d ken ma tekmel el async function",
                style: TextStyle(color: Colors.red))
          ],
        ),
      ),
    );
  }
}
