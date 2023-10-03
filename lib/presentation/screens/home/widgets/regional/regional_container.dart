import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';

class RegionalContainer extends StatelessWidget {
  const RegionalContainer({super.key, required this.text, required this.img, this.isSelected});

  final String text;
  final String img;
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: isSelected==true?ColorResources.primary:ColorResources.white)
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: text,color: isSelected==true?ColorResources.primary:null),
            Image(image: AssetImage(img),color:isSelected==true?ColorResources.primary:null),
          ],
        ),
      ),
    );
  }
}
