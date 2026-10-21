import 'package:flutter/material.dart';

class ImageSpace extends StatelessWidget {
   String imagePath;
   double width;
   double height;
   BoxFit fit;

   ImageSpace({
    super.key,
    required this.imagePath,
    this.width = double.infinity,
    this.height = double.infinity,
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imagePath',
      width: width,
      height: height,
      fit: fit,
    );
  }
}