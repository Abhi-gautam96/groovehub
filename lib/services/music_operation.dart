import 'package:groovehub/modals/music.dart';

class MusicOperations {
  //(music operation) bring music from netwok and then retrun a "single widegt" of (music) which is a column consist of a image of song,name of the song and the discription of the song
  MusicOperations._();
  static List<Music> getMusic() {
    return <Music>[
      Music("Todays top list", "https://i.scdn.co/image/ab67706c0000da84aec228027248824cc2de2905", "Ed sheern is on top of the hottest"),
      Music("All out 2010", "https://i.scdn.co/image/ab67706f00000002b0fe40a6e1692822f5a9d8f1", "the biggest songs of the 2010s"),
      Music("All out 80s", "https://i.scdn.co/image/ab67706f0000000284a725e6f3d69525afd9e1a7", "the biggest songs of the 80s"),
      Music("Rock Classsic", "https://i1.sndcdn.com/avatars-000498504975-izn176-t500x500.jpg", "Rock legends & epic songs "),
    ];
  }
}
