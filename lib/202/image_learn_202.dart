import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImagePaths.ic_apple_book.toWidget(height: 100),
    );
  }
}

// ignore: constant_identifier_names
enum ImagePaths {ic_apple_book}

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'assets/png/$name.png';
  }
  Widget toWidget({double height = 24}) {
    return Image.asset(path(),height: height,);
  }
}