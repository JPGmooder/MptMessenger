import 'dart:typed_data';

import 'package:image_picker/image_picker.dart' as picker;

class ImagePicker {
  static final picker.ImagePicker _currentPicker = picker.ImagePicker();
  Future<Uint8List?> pickImageFromDeviceToMemory() async {
    var pickedImage = await _currentPicker.pickImage(
        source: picker.ImageSource.gallery, maxWidth: 4096, maxHeight: 2160);
    Uint8List? bytesToReturn;
    if (pickedImage != null) bytesToReturn = await pickedImage.readAsBytes();
    
    return bytesToReturn;
  }
}
