import 'package:flutter/material.dart';
import 'package:gallery_app/controllers/home_controller.dart';
import 'package:gallery_app/views/full_screen.dart';
import 'package:gallery_app/widgets/like_and_views.dart';
import 'package:get/get.dart';

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
    required this.crossAxisCount,
    required this.controller,
  });

  final int crossAxisCount;
  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisExtent: 200,
            mainAxisSpacing: 10,
            crossAxisSpacing: 5,
          ),
          itemCount: controller.photos.length,
          itemBuilder: (context, index) {
            final data = controller.photos[index];
            return GestureDetector(
              onTap: () {
                Get.to(
                  () => FullScreen(
                    imageUrl: data.largImage,
                    heroTag: 'imageHero_$index', 
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Expanded(
                        child: Hero(
                      tag: 'imageHero_$index',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          data.image,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    )),
                    LikeAndViews(data: data)
                  ],
                ),
              ),
            );
          },
        ));
  }
}
