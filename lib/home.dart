import 'package:flutter/material.dart';

import 'contact.dart';
import 'counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: const Center(
        child: Text("สวัสดีชาว Fluter3.3"),
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
              leading: const Icon(Icons.home,color: Colors.orangeAccent),
              title: const Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_phone,color: Colors.orangeAccent),
              title: const Text("Contact"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactPage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.developer_board,color: Colors.orangeAccent),
              title: const Text("Counter"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CounterPage()));
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("Hello");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
