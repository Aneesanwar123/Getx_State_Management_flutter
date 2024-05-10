import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/get_home.dart';
import 'package:state_management/login_controller.dart';

class get_login extends StatefulWidget {
  const get_login({super.key});

  @override
  State<get_login> createState() => _get_loginState();
}

class _get_loginState extends State<get_login> {

  // Instantiate the login controller
  logincontroller controller = Get.put(logincontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("Getx Controllers"), // App bar title
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Email Input Field
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: Get.width * 0.90,
              height: 50,
              child: TextFormField(
                controller: controller.email.value,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: 'Email',
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          // Password Input Field
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 50,
              width: Get.width * 0.90,
              child: TextFormField(
                controller: controller.password.value,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_open_rounded),
                    hintText: 'Password',
                    border: InputBorder.none
                ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          // Login Button
          Obx(() {
            return InkWell(
              onDoubleTap: () {
                Get.to(gethome());
              },
              onTap: (){
                controller.loginApi();
              },
              child: controller.loading.value ? CircularProgressIndicator() : Container(
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                height: 50,
                width: Get.width * 0.90,
                child: Center(
                  child: Text("login"), // Login button text
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
