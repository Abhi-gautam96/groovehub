import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(Icons.settings),
        )
      ],
    );
  }

  // Widget createGrid() {
  //   return GridView.count(
  //     children: [],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blueGrey.shade300,
                      Colors.black,
                      // Colors.black,
                      //Colors.black
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: const [0.03, 0.3])),
            child: Column(children: [
              createAppBar("Good Morning"),
              const SizedBox(
                height: 5,
              )
            ])));
  }
}
