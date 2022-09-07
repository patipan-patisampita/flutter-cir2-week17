import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ประวัตินาย..."),
      ),
      body: Column(
        children:const [
          Text("ประวัตินาย..."),
          Divider(height: 10),
          Text("ที่อยู่..."),
          Divider(height: 10),
          Text("การศึกษา..."),
        ],
      ),
    );
  }
}