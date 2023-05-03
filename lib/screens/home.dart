import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 40, color: Colors.amber),
      ),
    );
  }
}
