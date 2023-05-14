import 'package:flutter/material.dart';
import 'package:groovehub/modals/category.dart';
import 'package:groovehub/services/category_operation.dart';
import 'package:groovehub/services/music_operation.dart';
import 'package:groovehub/modals/music.dart';

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
      height: 300,
      child: GridView.count(
        childAspectRatio: 10 / 3,
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: createListOfCategories(),
      ),
    );
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              music.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            music.name,
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            music.descr,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget createMusicList1(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
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
                createGrid(),
                createMusicList("Made for you"),
                createMusicList1("Polular Playlist"),
              ]))),
    );
  }
}
