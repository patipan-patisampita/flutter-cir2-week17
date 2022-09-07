import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late int _count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Counter"),
        backgroundColor: Colors.redAccent,
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
              "Counter",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Divider(height: 20,color: Colors.redAccent),
            Text(
              "$_count",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(),
    );
  }
}
