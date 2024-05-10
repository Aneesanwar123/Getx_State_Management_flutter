import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/image_picker.dart';

// Camera widget for capturing images
class camera extends StatefulWidget {
  const camera({super.key});

  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  // Instance of image controller to handle image picking logic
  imagecontroller controller = Get.put(imagecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("get_camera"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Display the picked image if available
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagepath.isNotEmpty
                    ? FileImage(File(controller.imagepath.toString()))
                    : null,
              ),
            ),
            // Button to trigger image picker
            TextButton(
              onPressed: () {
                controller.imagepicker();
              },
              child: Text("Image Picker"),
            )
          ],
        );
      }),
    );
  }
}
