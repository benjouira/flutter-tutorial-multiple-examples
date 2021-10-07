import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page one"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page One"),
            MaterialButton(
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: Text("Back"),
            )
          ],
        ),
      ),
    );
  }
}
