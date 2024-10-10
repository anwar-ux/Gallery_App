import 'package:gallery_app/models/model.dart';
import 'package:gallery_app/services/api_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var photos = <PhotoModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchPhotos();
  }

  void fetchPhotos() async {
    try {
      isLoading(true);
      var loadedPhotos = await ApiService().getImages();
      photos.value = loadedPhotos;
    } finally {
      isLoading(false);
    }
  }
}
