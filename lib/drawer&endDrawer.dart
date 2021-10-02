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
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        // leading: IconButton(
        //     onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.alarm_add_rounded)),
        ],
        // backgroundColor: Colors.red,
        brightness: Brightness.dark,
      ),
      drawerScrimColor: Colors.blue.withOpacity(0.2),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Rabii"),
              accountEmail: Text("rabi3@tech.tn"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("./images/1.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home page"),
              leading: Icon(Icons.home),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help),
              onTap: () {},
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.format_align_center_rounded),
              onTap: () {},
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout_outlined),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
