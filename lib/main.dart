import 'package:my_learning/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Container(width: 100, color: Colors.red, child: const Text('one')),
          Container(width: 200, color: Colors.green, child: const Text('two')),
          Container(width: 300, color: Colors.blue, child: const Text('three')),
        ],
      ),
    );
  }
}
