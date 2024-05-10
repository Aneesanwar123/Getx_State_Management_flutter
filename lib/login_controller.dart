import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

// Controller for handling login logic
class logincontroller extends GetxController {
  // Observables for email and password text controllers
  final email = TextEditingController().obs;
  final password = TextEditingController().obs;

  // Observable for showing loading state
  RxBool loading = false.obs;

  // Function to handle login API request
  void loginApi() async {
    // Set loading state to true while waiting for API response
    loading.value = true;
    try {
      // Make HTTP POST request to login API
      final response = await http.post(Uri.parse("https://reqres.in/api/login"), body: {
        "email": email.value.text,
        "password": password.value.text,
      });

      // Decode response body
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      // Check response status code
      if (response.statusCode == 200) {
        // If successful, set loading state to false and show success message
        loading.value = false;
        Get.snackbar("Login Successful", "Congratulations");
      } else {
        // If failed, set loading state to false and show error message
        loading.value = false;
        Get.snackbar("Login Failed", data["error"]);
      }
    } catch (e) {
      // If an error occurs, set loading state to false and show error message
      loading.value = false;
      Get.snackbar("Error", e.toString());
    }
  }
}
