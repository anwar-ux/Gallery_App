class PhotoModel {
  final int id;
  final String image;
  final String largImage;
  final int likes;
  final int views;

  PhotoModel({required this.id, required this.image, required this.likes, required this.views, required this.largImage});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return PhotoModel(
      id: json['id'],
      image: json['previewURL'],
      likes: json['likes'],
      views: json['views'],
      largImage: json['largeImageURL'],
    );
  }
}
