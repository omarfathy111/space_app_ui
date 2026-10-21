import 'package:flutter/material.dart';
import 'package:space_app/widgets/image_space.dart';

class EarthScreen extends StatelessWidget {
  const EarthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSpace(
      imagePath: 'earth.png',
      width: 342,
      height: 339
    );
  }
}
