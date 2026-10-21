import 'package:flutter/material.dart';
import 'package:space_app/colors/colors.dart';

class TextSpace extends StatelessWidget {
   final String? textName;
  final double? fontsize;
  final FontWeight? fontWeight;
  final Color? color;
  const TextSpace({super.key,this.textName ,this.fontsize,this.fontWeight ,this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName ?? '',
      style: TextStyle(
        color: color ?? AppColors.white,
        fontSize: fontsize ?? 24,
        fontWeight: fontWeight ?? FontWeight.bold,
      ),
    );
  }
}
