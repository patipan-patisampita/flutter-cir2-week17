import 'package:flutter/material.dart';

import 'gridview_card_page.dart';
import 'list_view_menu.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("OK");
            },
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              debugPrint("OK");
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Mark"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Grid View'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GridViewCardPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('List View'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListViewMenuPage()));
              },
            ),
             ListTile(
              leading: Icon(Icons.api),
              title: Text('ประวัติส่วนตัว'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
           
          ],
        ),
      ),
    );
  }
}
