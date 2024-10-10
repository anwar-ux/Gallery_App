import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:gallery_app/models/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  final String apiUrl = 'https://pixabay.com/api/?key=46438723-c9607c7f6ecb3bc0de4bf396b&q=dubai&image_type=photo';

  Future<List<PhotoModel>> getImages() async {
    final response = await http.get(Uri.parse(apiUrl));
    try {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body)['hits'];

        return data.map((model) => PhotoModel.fromJson(model)).toList().cast<PhotoModel>();
        
      } else {
        if (kDebugMode) {
          print(response.statusCode);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }

    return [];
  }
}
