import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class get_route extends StatefulWidget {
  const get_route({super.key});

  @override
  State<get_route> createState() => _get_routeState();
}

class _get_routeState extends State<get_route> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx Route"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: Text("get_route back"),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
