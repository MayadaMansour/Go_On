import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/color_resource/color_resources.dart';
import '../../../utils/constants/app_constants.dart';
import '../../screens/profile/my_esims/esims/widget/esimsCostemText.dart';
import '../text/custom_text.dart';

class SmallButton extends StatelessWidget {
  const SmallButton(
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
          width: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: ColorResources.primary),
              color: isSelected == true
                  ? ColorResources.containerColor
                  : ColorResources.white,
              borderRadius: BorderRadius.circular(10)),
          child: EsimsCustomText(
              text: text,
              txtSize: 16,
              fontWeight: FontWeight.w500,
              color: isSelected == true
                  ? ColorResources.white
                  : ColorResources.primary)),
    );
  }
}
