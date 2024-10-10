import 'package:flutter/material.dart';
import 'package:gallery_app/views/home.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.quicksandTextTheme(Theme.of(context).textTheme),
        ),
      home:HomePage()
    );
  }
}

