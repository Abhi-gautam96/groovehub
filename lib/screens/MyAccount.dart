import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text(
        'MyAccount',
        style: TextStyle(fontSize: 40, color: Colors.amber),
      ),
    );
  }
}
