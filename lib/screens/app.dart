import "package:flutter/material.dart";
import "package:groovehub/screens/home.dart";
import "package:groovehub/screens/library.dart";
import "package:groovehub/screens/search.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState(); // setting state of Myapp
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    const Home(),
    const Search(),
    const MyLibrary(),
  ]; //screens i have
  int currentTabindex = 0; //initial tab index is zero

  Widget miniPlyer() {
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
      duration: const Duration(microseconds: 500),
      color: Colors.blueGrey,
      width: deviceSize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            "https://i.scdn.co/image/ab67706c0000da84aec228027248824cc2de2905",
            fit: BoxFit.cover,
          ),
          const Text(
            'Song A',
            style: TextStyle(color: Colors.white),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // print("build");
    return Scaffold(
        body: tabs[currentTabindex], //(3)currenttabinex get assign here which call tab form final tab
        backgroundColor: Colors.black,
        bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
          miniPlyer(),
          BottomNavigationBar(
              fixedColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black,
              currentIndex: currentTabindex, // (4) send currentindex to bottom navigation bar
              onTap: (currentIndex) {
                //(1)"ontap" function give currentindex
                currentTabindex = currentIndex; //(2)which will store in currenttabindex

                // print("$currentIndex");
                setState(() {}); //for changing different tabs
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.library_add_outlined,
                      color: Colors.grey,
                    ),
                    label: 'MyLibrary'),
              ]),
        ]));
  }
}
