import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  //1.Constructor
  const MyCard({super.key});
  //2.Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Card"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(3, (index) {
            return const Card(
              margin: EdgeInsets.all(12),
            );
          }),
        ),
      ),
    );
  }
}
