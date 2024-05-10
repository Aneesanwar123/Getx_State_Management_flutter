import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/getx_controller.dart';
import 'package:state_management/getx_route.dart';
import 'package:state_management/mark_getx.dart';
class dark_light_theme extends StatefulWidget {
  const dark_light_theme({super.key});

  @override
  State<dark_light_theme> createState() => _dark_light_themeState();
}

class _dark_light_themeState extends State<dark_light_theme> {

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     counter ++;
  //     setState(() {
  //
  //     });
  //   });
  // }

  final CounterController controller= Get.put(CounterController());
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print("rebuilt");
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Getx Light and dark theme"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Management system"),
              subtitle: Text("get teh diaglogue"),
              onTap: ()
              {
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you want to delete the chat",
                  textConfirm: "yes",
                  textCancel: "No"
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Management system"),
              subtitle: Text("get teh diaglogue"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("light Theme"),
                          leading: Icon(Icons.light_mode_sharp),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          title: Text("Dark Theme"),
                          leading: Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          ),
          Center(
            child: TextButton(
              child: Text("get_route"),
              onPressed: () {
                Get.to(get_route());
              },
            ),
          ),
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                Get.updateLocale(Locale('en', 'US')
                );
              },
                  child: Text("english")
              ),
              OutlinedButton(
                  onPressed: () {
                Get.updateLocale(Locale('ur', 'PK')
                );
              }, child: Text("Urdu"))
            ],
          ),
          Obx(() => Column(
            children: [
              Text(
                controller.counter.toString(),
              )
            ],
          )),
          TextButton(
              onPressed: () {
                Get.to(mark_get());
              },
              child: Text("data"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increamnentcounter();
          // counter++;
          // print(counter);
          // setState(() {
          //
          // });
        },
      ),
    );
  }
}
