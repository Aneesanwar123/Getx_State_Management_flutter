import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/dark_light_theme.dart'; // Import the Get package

class gethome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('State Management Getx'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=>dark_light_theme()));
            // Show the snackbar
            Get.snackbar(
              'Anees Ahmed',
              'Learn state management Getx',
              backgroundColor: Colors.black,
              colorText: Colors.white, // Set text color
            );
          },
          child: Text(
            'Show Snackbar',
          ),
        ),
      ),
    );
  }
}
