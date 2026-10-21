import 'package:flutter/material.dart';
import 'package:space_app/colors/colors.dart';

class IconSpace extends StatefulWidget {
  IconData? iconData;
  VoidCallback? onPressed;
  double? size;

  IconSpace({super.key, this.iconData, this.onPressed,this.size});

  @override
  State<IconSpace> createState() => _IconSpaceState();
}

class _IconSpaceState extends State<IconSpace> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.red,
      child: IconButton(
        onPressed: widget.onPressed ?? () {},
        icon: Icon(
          widget.iconData ?? Icons.arrow_back,
          color: AppColors.white,
          size: widget.size ?? 20,
        ),
      ),
    );
  }
}
