import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../../utils/images/images.dart';
import '../../../../../widgets/text/custom_text.dart';


class FAQSAppBar extends StatelessWidget {
  const FAQSAppBar({super.key, required this.text, this.isHelp, this.isHome=false});

  final String text;
  final bool? isHelp;
  final bool? isHome;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      decoration: ShapeDecoration(
        color: Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
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
          SvgPicture.asset(Images.help):AppConstants.noGap
        ],
      ),
    );
  }
}
