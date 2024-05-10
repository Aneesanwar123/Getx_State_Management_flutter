import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// Controller for handling image picking logic
class imagecontroller extends GetxController {
  // Observable for storing the path of the picked image
  final imagepath = "".obs;

  // Function to pick an image from camera
  Future imagepicker() async {
    // Create an instance of ImagePicker
    final ImagePicker _picker = ImagePicker();
    // Pick an image from the camera
    final image = await _picker.pickImage(source: ImageSource.camera);
    // Check if an image is picked
    if (image != null) {
      // Update the image path observable with the picked image path
      imagepath.value = image.path.toString();
    }
  }
}
