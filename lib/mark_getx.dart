import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/camera_get.dart';
import 'package:state_management/favourite_controller.dart';
import 'package:state_management/image_picker.dart';

class mark_get extends StatefulWidget {
  const mark_get({super.key});

  @override
  State<mark_get> createState() => _mark_getState();
}

class _mark_getState extends State<mark_get> {

  favouritecontroller controller = Get.put(favouritecontroller());
  List<String > fruitlist = ["banana","mango","apple","cherry"];
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>camera()));
          },
              icon: Icon(Icons.camera_alt)
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("fruit list"),
      ),
      body: ListView.builder(
        itemCount: fruitlist.length,
          itemBuilder: (context,index){
          return Card(
            child: ListTile(
              trailing: Icon(
                  Icons.heart_broken_sharp,
                color: fruitlist[index].isNotEmpty ? Colors.red : Colors.white,
              ),
              title: Text(fruitlist[index].toString()),
            ),
          );
      }
      ),
    );
  }
}
