import 'package:flutter/material.dart';

import 'contact.dart';
import 'profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Flutter App"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Liver Pool",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Divider(height: 20,color: Colors.redAccent),
            Text(
              "$_count",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Mark Zuckerberg"),
              accountEmail: Text("mark@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.orangeAccent),
              title: const Text("Home"),
              onTap: () async {
                await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.contact_phone, color: Colors.orangeAccent),
              title: const Text("Contact"),
              onTap: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.person, color: Colors.orangeAccent),
              title: const Text("ประวัตส่วนตัว"),
              onTap: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count ++;
                debugPrint("count:$_count");
              });
            },
          ),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _count --;
                debugPrint("count:$_count");
              });
            },
          ),
        ],
      ),
    );
  }
}
