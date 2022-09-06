import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluter Counter"),
        backgroundColor: Colors.redAccent,
      ),
      body:const Center(
        child: Text("Counter: 5 "),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: (Colors.redAccent),
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        tooltip: "Add",
      ),
    );
  }
}
