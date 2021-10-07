import 'package:flutter/material.dart';

class Three extends StatelessWidget {
  const Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page Three"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page three"),
            MaterialButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
                // Navigator.of(context).pushNamed("home");
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
