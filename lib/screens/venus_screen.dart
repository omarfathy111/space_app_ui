import 'package:flutter/material.dart';
import 'package:space_app/widgets/image_space.dart';

class VenusScreen extends StatelessWidget{
  const VenusScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return ImageSpace(
      imagePath: 'venus.png',
      width: 342,
      height: 339
    );
  }

}