import "package:flutter/material.dart";
import "package:groovehub/screens/home.dart";
import "package:groovehub/screens/library.dart";
import "package:groovehub/screens/search.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    const Home(),
    const Search(),
    const MyLibrary()
  ]; //screens i have
  int currentTabindex = 0; //initial tab index is zero
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
        body: tabs[
            currentTabindex], //(3)currenttabinex get assign here which call tab form final tab
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 70, 66, 66),
            onTap: (currentIndex) {
              //(1)"ontap" function give currentindex
              currentTabindex =
                  currentIndex; //(2)which will store in currenttabindex

              print("$currentIndex");
              setState(() {}); //for changing different tabs
            },
            selectedLabelStyle: const TextStyle(color: Colors.white),
            selectedItemColor: Colors.amber,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_add_outlined,
                    color: Colors.white,
                  ),
                  label: 'MyLibrary'),
            ]));
  }
}
