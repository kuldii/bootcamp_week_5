import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class HomeController extends GetxController {
  final ImagePicker _picker = ImagePicker();

  File? imageGallery;

  ambilGambar() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imageGallery = File(image.path);
      update();
    }
  }

  reset() {
    imageGallery = null;
    update();
  }
}
