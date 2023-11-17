import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final imagePickerClientProvider = Provider<ImagePicker>((ref) {
  final imagePicker = ImagePicker();
  return imagePicker;
});