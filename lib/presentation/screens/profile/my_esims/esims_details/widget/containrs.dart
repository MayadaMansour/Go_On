import 'package:flutter/cupertino.dart';

import '../../../../../../utils/color_resource/color_resources.dart';
import '../../../../../widgets/text/custom_text.dart';

class EsimsDetailsContainer extends StatelessWidget {

  const EsimsDetailsContainer({super.key, required this.title, required this.width, required this.hight, required this.txtSize, required this.fontWeight, this.color,  this.textAlign,});

  final String title;
  final double width;
  final double hight;
  final double txtSize;
  final FontWeight fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
     return
    Container(
      width: width,
      height: hight,
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 234,top: 16),
        child: CustomText(text: title,fontWeight: fontWeight,txtSize: txtSize,),
      ),
      decoration: ShapeDecoration(
        color: ColorResources.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: ColorResources.subTitleContainer,
            blurRadius: 25,
            offset: Offset(4, 5),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
