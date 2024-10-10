import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({super.key, required this.heroTag, required this.imageUrl});
  final String imageUrl;
  final String heroTag;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Center(
          child: Hero(
              tag: heroTag,
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
