// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gallery_app/controllers/home_controller.dart';
import 'package:gallery_app/widgets/image_grid.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const gridItemSize = 150.0;
    final crossAxisCount = (screenWidth / gridItemSize).floor();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ImageGrid(crossAxisCount: crossAxisCount, controller: controller);
        },
      ),
    );
  }
}
