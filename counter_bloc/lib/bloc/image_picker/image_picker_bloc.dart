import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/image_picker_util.dart';
import 'image_picker_event.dart';
import 'image_picker_state.dart';


class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePickerUtil imagePickerUtil;
  ImagePickerBloc(this.imagePickerUtil) : super(const ImagePickerState()) {
    on<GalleryImagePicker>(_pickImageFromGallery);
    on<CaptureImagePicker>(_captureImage);
  }

  Future<void> _pickImageFromGallery(ImagePickerEvent event,Emitter<ImagePickerState> states) async {
    XFile? file = await imagePickerUtil.galleryCapture();
    emit(state.copyWith(file: file,callFrom: "Gallery"));
  }
  Future<void> _captureImage(ImagePickerEvent event,Emitter<ImagePickerState> states) async {
    XFile? file = await imagePickerUtil.cameraCapture();
    emit(state.copyWith(file: file,callFrom: "Capture"));
  }
}
