import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/color_resource/color_resources.dart';
import '../text/custom_text.dart';

class DropDown extends StatelessWidget {
  const DropDown({super.key, required this.text, this.widget, this.onTap, this.isActive=true, this.isDrop});

  final String text;
  final Widget? widget;
  final Function()? onTap;
  final bool? isActive;
  final bool? isDrop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: isActive==true? ColorResources.primary:ColorResources.white)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Row(
                      children: [
                        CustomText(text: text,txtSize: 16,fontWeight: FontWeight.w400,color:isActive==true? ColorResources.primary:ColorResources.white,),
                        const Spacer(),
                      ],
                    ),
                  ),
                  widget??const SizedBox()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
