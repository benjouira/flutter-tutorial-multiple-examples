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
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextButton(
                child: Text("show SnackBar !"),
                onPressed: () {
                  final scaffold = ScaffoldMessenger.of(context);
                  scaffold.showSnackBar(SnackBar(
                    content: const Text(
                      "this is a snackbar message ",
                    ),
                    backgroundColor: Colors.red,
                    action: SnackBarAction(
                      label: 'Close',
                      textColor: Colors.white,
                      onPressed: scaffold.hideCurrentSnackBar,
                    ),
                  ));
                }),
            TextButton(
                child: Text("show Alert !"),
                onPressed: () {
                  _showMyDialog();
                }),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text("attention !"),
                  Text("do you want to proceed ?")
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text("Confirm"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
