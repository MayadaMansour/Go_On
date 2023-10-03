import 'package:flutter/material.dart';
import '../../../../../utils/color_resource/color_resources.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, this.color, this.height, this.width});

  final Color? color;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height??10,
          width: width??10,
          decoration: BoxDecoration(
              color: color??ColorResources.primary,
              shape: BoxShape.circle),
        ),
      ],
    );
  }
}
