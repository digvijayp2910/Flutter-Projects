import 'dart:io'; // Import dart:io for File
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import "package:http/http.dart" as http;

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? image;
  final _picker = ImagePicker();

  bool showSpinner = false;

  Future<void> pickImage() async {
    try {
      final pickedImage =
          await _picker.pickImage(source: ImageSource.camera, imageQuality: 80);
      if (pickedImage != null) {
        setState(() {
          image = File(pickedImage.path);
        });
      }
    } catch (e) {
      print("Error picking image: $e");
    }
  }

  Future<void> uploadImage() async {
    setState(() {
      showSpinner = true;
    });

    if (image != null) {
      var stream = http.ByteStream(image!.openRead());
      var length = await image!.length();
      var url = Uri.parse("https://fakestoreapi.com/products");
      var request = http.MultipartRequest("POST", url);

      request.fields['title'] = "Static title";
      var multiPartFile = http.MultipartFile("image", stream, length,
          filename: image!.path.split("/").last);

      request.files.add(multiPartFile);
      var response = await request.send();

      if (response.statusCode == 200) {
        setState(() {
          image=null;
        });
        Get.snackbar("Success","Image is uploaded successfully !!");
        print("Image uploaded");
      } else {
        print("Image not uploaded");
      }
    }

    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: image == null
                ? GestureDetector(
                    onTap: () {
                      pickImage();
                    },
                    child: Text("Upload Image"),
                  )
                : Column(
                    children: [
                      Image.file(
                        image!,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          uploadImage();
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          color: Colors.green,
                          child: Center(child: Text("Upload")),
                        ),
                      )
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
