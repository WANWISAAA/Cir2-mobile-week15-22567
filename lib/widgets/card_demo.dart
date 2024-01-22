import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  ///1.Constructor
  //2.Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('Card View'),
      ),
      body: Card(
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          child: const Column(
            children: [
              Icon(Icons.home),
              Text("CARD-1")
            ],
          ),
        ),
      ),
    );
  }
}
