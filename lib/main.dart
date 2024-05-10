import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/languages.dart';
import 'get_home.dart';
import 'get_login.dart';

void main() {
  runApp(const MyApp()); // Capitalized the class name
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffD9D9D9), // Set your desired background color here
      ),
      debugShowCheckedModeBanner: false,
      home: get_login(),
      translations: Languages(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('ur','ur_PK'),
    );
  }
}

