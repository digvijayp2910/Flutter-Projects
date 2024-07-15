import 'dart:io';

import 'package:counter_bloc/bloc/image_picker/image_picker_bloc.dart';
import 'package:counter_bloc/bloc/image_picker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/image_picker/image_picker_event.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Image Picker Screen"),
    ),
    body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            BlocBuilder<ImagePickerBloc,ImagePickerState>(builder: (context,state){
              if(state.file == null){
                return InkWell(child: CircleAvatar(child: Icon(Icons.camera),),onTap: (){
                  context.read<ImagePickerBloc>().add(CaptureImagePicker());
                },);
              }
              else{
                return Image.file(File(state.file!.path.toString()));
              }
            },buildWhen: (pre,cur) => ("Capture" == cur.callFrom) ),
            BlocBuilder<ImagePickerBloc,ImagePickerState>(builder: (context,state){
              if(state.file == null){
                return InkWell(child: CircleAvatar(child: Icon(Icons.camera),),onTap: (){
                  context.read<ImagePickerBloc>().add(GalleryImagePicker());
                },);
              }
              else{
                return Image.file(File(state.file!.path.toString()));
              }
            },buildWhen: (pre,cur) => (("Gallery" == cur.callFrom) || pre.callFrom ==null )),
          ],
        ),
      ),
    ),
    );
  }
}
