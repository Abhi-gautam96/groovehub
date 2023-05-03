import 'package:flutter/material.dart';

class MyLibrary extends StatelessWidget {
  const MyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Text(
      'MyLibrary',
      style: TextStyle(fontSize: 40, color: Colors.amber),
    ));
  }
}
