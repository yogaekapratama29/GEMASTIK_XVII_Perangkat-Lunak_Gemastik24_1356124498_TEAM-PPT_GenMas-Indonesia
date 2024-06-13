import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageHelper {
  ImageHelper({
    ImagePicker? imagePicker,
    ImageCropper? imageCropper,
  })  : _imagePicker = imagePicker ?? ImagePicker(),
        _imageCropper = imageCropper ?? ImageCropper();

  final ImagePicker _imagePicker;
  final ImageCropper _imageCropper;

  Future<XFile?> pickImage({
  ImageSource source = ImageSource.gallery,
  int imageQuality = 100,
  bool multiple = false,

}) async {
  if (multiple) {
    // Return multiple images
    List<XFile>? files =
        await _imagePicker.pickMultiImage(imageQuality: imageQuality);
    return files != null ? files.firstOrNull : null;
  } else {
    // Return single image
    XFile? file = await _imagePicker.pickImage(
      source: source,
      imageQuality: imageQuality,
    );
    return file;
  }
}


  
}
