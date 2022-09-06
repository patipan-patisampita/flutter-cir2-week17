import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fluter Counter"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(onPressed: () {
            setState(() {
              _count = 0;
              debugPrint("count: $_count");
            });
          }, icon: const Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.wifi))
        ],
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: (Colors.redAccent),
            onPressed: () {
              setState(() {
                _count ++;
                debugPrint("count: $_count");
              });
            },
            child: Icon(Icons.add),
            tooltip: "Add ",
          ),

          FloatingActionButton(
            backgroundColor: (Colors.redAccent),
            onPressed: () {
              setState(() {
                _count --;
                debugPrint("count: $_count");
              });
            },
            child: Icon(Icons.delete_outline),
            tooltip: "Delete ",
          ),
        ],
      ),
    );
  }
}
