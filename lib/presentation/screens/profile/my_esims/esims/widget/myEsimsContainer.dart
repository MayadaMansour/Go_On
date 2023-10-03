import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../utils/color_resource/color_resources.dart';
import 'esimsCostemText.dart';

class MyEsimsContainer extends StatelessWidget {
  const MyEsimsContainer(
      {super.key, required this.text, this.isSelected, required this.onTap});

  final String text;
  final bool? isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: 50,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected == true
                  ? ColorResources.containerColor
                  : ColorResources.white,
              borderRadius: BorderRadius.circular(10)),
          child: EsimsCustomText(
              text: text,
              txtSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected == true
                  ? ColorResources.primary
                  : ColorResources.background)),
    );
  }
}
