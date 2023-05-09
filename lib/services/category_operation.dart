// import 'package:flutter/foundation.dart';
import 'package:groovehub/modals/category.dart';

class CategoryOperation {
  CategoryOperation._(); //private constructor so no one can make object of it
  static List<Category> getCategory() {
    //static b/c its repetative so no need to allocate memory several times it is going to to sit in memory as program runs
    //and b/c its static we dont need to make object of this so thats why we make a private constructor 'CategoryOperation._();'
    return <Category>[
      Category('Top songs', 'https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/44/17/3c/44173c67-fc77-2bc3-a54e-c275c89f71bd/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/256x256bb.jpg'),
      Category('MJ hit songs', 'https://podcasts.podinstall.com/assets/img/rs/256/b23c56c1450c1dcb0ebd132368de5c619310343e/101d6476a5a3bc7c877d3733a470bea2b1899fd7.png'),
      Category('Chill hits', 'https://i.scdn.co/image/ab67616d0000b273e1611fbdd614f77bb570303e'),
      Category('Top songs', 'https://apprecs.org/ios/images/app-icons/256/3f/873921855.jpg'),
    ];
  }
}
