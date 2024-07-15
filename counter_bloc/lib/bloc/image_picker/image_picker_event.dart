
import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable{
  const ImagePickerEvent();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class GalleryImagePicker extends ImagePickerEvent{}

class CaptureImagePicker extends ImagePickerEvent{}