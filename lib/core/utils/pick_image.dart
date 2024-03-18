import 'dart:io';

import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  try {
    final imgFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (imgFile != null) {
      return File(imgFile.path);
    }
    return null;
  } catch (e) {
    return null;
  }
}
