import 'package:flutter/material.dart';
import 'package:groovehub/modals/category.dart';
import 'package:groovehub/services/category_operation.dart';

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

  Widget createCategory(Category category) {
    return Container(
      // creating row in grid

      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(
            category.imageUrl,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: const TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> createListOfCategories() {
    // b/c in widget createGrid, childern need list of category
    List<Category> categoryList = CategoryOperation.getCategory(); // (1) b/c getCategory is static we need not to make an object of it so we call it then store it in categoryList which will create a single category
    List<Widget> categories = categoryList.map((Category category) => createCategory(category)).toList(); // (2) then that single category will get converted in a widget by map function and by .tolist all wigits upcoming converted into a list of widget
    return categories;
  }

  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 400,
      child: GridView.count(
        childAspectRatio: 10 / 3,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: createListOfCategories(),
      ),
    );
  }

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
                    stops: const [
                      0.03,
                      0.3
                    ])),
            child: Column(children: [
              createAppBar("Good Morning"),
              const SizedBox(
                height: 5,
              ),
              createGrid()
            ])));
  }
}
