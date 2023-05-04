import "package:flutter/material.dart";
import "package:groovehub/screens/home.dart";
import "package:groovehub/screens/library.dart";
import "package:groovehub/screens/search.dart";
import "package:groovehub/screens/MyAccount.dart";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final tabs = [
    const Home(),
    const Search(),
    const MyLibrary(),
    const MyAccount(),
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
            fixedColor: Colors.blue,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.amber,
            currentIndex:
                currentTabindex, // (4) send currentindex to bottom navigation bar
            onTap: (currentIndex) {
              //(1)"ontap" function give currentindex
              currentTabindex =
                  currentIndex; //(2)which will store in currenttabindex

              print("$currentIndex");
              setState(() {}); //for changing different tabs
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.library_add_outlined,
                  ),
                  label: 'MyLibrary'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box_outlined,
                  ),
                  label: 'MyAccount'),
            ]));
  }
}
