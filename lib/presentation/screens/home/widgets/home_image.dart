import 'package:flutter/material.dart';
import '../../../../utils/color_resource/color_resources.dart';
import '../../../widgets/text/custom_text.dart';

class HomeImage extends StatelessWidget {
  const HomeImage({super.key, required this.img, required this.country, this.isSelected, required this.onTap});

  final String img;
  final String country;
  final bool? isSelected;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isSelected==true?ColorResources.primary:ColorResources.white)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(img),),
              CustomText(text: country,txtSize: 15,fontWeight: FontWeight.w300,color: ColorResources.grey2),
            ],
          ),
        ),
      ),
    );
  }
}
