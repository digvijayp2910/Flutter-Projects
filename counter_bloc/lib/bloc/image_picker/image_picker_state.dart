import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable{
  final XFile? file;
  final String? callFrom;
  const ImagePickerState({ this.file,this.callFrom});

  ImagePickerState copyWith( {XFile? file, String? callFrom}){
    return ImagePickerState(file: file ?? this.file,callFrom: callFrom ?? this.callFrom);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [file];
}

