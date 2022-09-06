import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluter Counter"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Text(
          "Counter: $_count ",
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.redAccent
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: (Colors.redAccent),
        onPressed: () => debugPrint("count: "),
        child: Icon(Icons.add),
        tooltip: "Add ",
      ),
    );
  }
}
