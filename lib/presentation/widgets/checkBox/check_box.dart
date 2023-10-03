import 'package:flutter/material.dart';
import '../../../../utils/color_resource/color_resources.dart';
import '../text/custom_text.dart';

class CheckBox extends StatelessWidget {
  const CheckBox({super.key, required this.isCheckBox, required this.onChange, required this.text, this.isBrand});

  final bool? isBrand;
  final bool isCheckBox;
  final Function(bool?) onChange;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: isCheckBox, onChanged:onChange,activeColor: ColorResources.primary),
        CustomText(text:text,txtSize: 13,fontWeight: FontWeight.w400,),
      ],
    );
  }
}
