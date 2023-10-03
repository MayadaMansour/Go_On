import'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import 'package:go_on/utils/images/images.dart';
import '../text/custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text, this.isHelp, this.isHome=false});

  final String text;
  final bool? isHelp;
  final bool? isHome;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isHome==false?
           InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child:SvgPicture.asset(Images.backArrow)):AppConstants.gap20,
          CustomText(text: text,txtSize: 16,fontWeight: FontWeight.w600),
          isHelp==true?
          InkWell(
              onTap: (){},
              child:SvgPicture.asset(Images.help)):AppConstants.noGap
        ],
      ),
    );
  }
}
