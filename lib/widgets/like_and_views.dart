import 'package:flutter/material.dart';
import 'package:gallery_app/models/model.dart';
import 'package:gallery_app/util/constants.dart';

class LikeAndViews extends StatelessWidget {
  const LikeAndViews({
    super.key,
    required this.data,
  });

  final PhotoModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              Constants.kWidth5,
              Text(data.likes.toString()),
            ],
          ),
          Row(
            children: [
              const Icon(Icons.remove_red_eye_outlined),
              Constants.kWidth5,
              Text(data.views.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
