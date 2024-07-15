import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:multiple_entity/app/modules/home/views/upload_image.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(child: ImagePickerWidget()),
    );
  }
}
