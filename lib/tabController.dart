import 'package:flutter/material.dart';

class FirstStatfull extends StatefulWidget {
  FirstStatfull({Key? key}) : super(key: key);

  @override
  _FirstStatfullState createState() => _FirstStatfullState();
}

class _FirstStatfullState extends State<FirstStatfull>
    with SingleTickerProviderStateMixin {
  late TabController myController;
  @override
  void initState() {
    myController = new TabController(length: 15, vsync: this, initialIndex: 1);
    super.initState();
  }

  var price = 900;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FaceApp"),
        bottom: TabBar(
            controller: myController,
            indicatorWeight: 2,
            indicatorColor: Colors.red,
            isScrollable: true,
            onTap: (index) {
              print(index);
            },
            tabs: [
              Tab(
                child: Text("Home"),
                icon: Icon(Icons.home),
              ),
              Tab(
                child: Text("Profil"),
                icon: Icon(Icons.person),
              ),
              Tab(
                child: Text("Messege"),
                icon: Icon(Icons.messenger_rounded),
              ),
              Tab(
                child: Text("Info"),
                icon: Icon(Icons.info),
              ),
              Tab(
                child: Text("About"),
                icon: Icon(Icons.help_center_rounded),
              ),
              Tab(
                child: Text("Help"),
                icon: Icon(Icons.help),
              ),
              Tab(
                child: Text("Guides"),
                icon: Icon(Icons.gif_rounded),
              ),
              Tab(
                child: Text("Youtube"),
                icon: Icon(Icons.home),
              ),
              Tab(
                child: Text("Home"),
              ),
              Tab(
                child: Text("Profil"),
              ),
              Tab(
                child: Text("Messege"),
              ),
              Tab(
                child: Text("Info"),
              ),
              Tab(
                child: Text("About"),
              ),
              Tab(
                child: Text("Help"),
              ),
              Tab(
                child: Text("Guides"),
              ),
            ]),
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
      body: TabBarView(
        controller: myController,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Join us for the 2021 Solution Challenge Demo Day hosted by Google Developer Student Clubs. The top 10 finalist teams will demo their solutions live while judges pick the top 3 grand winners!"),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "With months in the making, these students have come together with their local Google Developer Student Club teammates at their universities to create some truly inspiring ideas to support the United Nations 17 Sustainable Development Goals."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "​Kind reminder to be respectful and follow Google's Community Guidelines & Anti-Harassment Policy when engaging with others. Review community guidelines at the following link: https://goo.gle/3zeVMtE"),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Join us for the 2021 Solution Challenge Demo Day hosted by Google Developer Student Clubs. The top 10 finalist teams will demo their solutions live while judges pick the top 3 grand winners!"),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "With months in the making, these students have come together with their local Google Developer Student Club teammates at their universities to create some truly inspiring ideas to support the United Nations 17 Sustainable Development Goals."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "​Kind reminder to be respectful and follow Google's Community Guidelines & Anti-Harassment Policy when engaging with others. Review community guidelines at the following link: https://goo.gle/3zeVMtE"),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
                "Check out Angular 8 + Spring Boot Basic Authentication Example - You can implement basic login and logout features in this CRUD example. All the REST calls made from Angular to Spring Boot will be authenticated using Basic Authentication."),
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
