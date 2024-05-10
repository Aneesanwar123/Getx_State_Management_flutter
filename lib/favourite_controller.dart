import 'package:get/get.dart';

class favouritecontroller extends GetxController{

  RxList<String > fruitlist = ["banana","mango","apple","cherry"].obs;

  addtofav(String value){
    fruitlist.add(value);
  }
  addtoremove(String value){
    fruitlist.remove(value);
  }

}