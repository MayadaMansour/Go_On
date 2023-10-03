import 'package:flutter/material.dart';
import 'package:go_on/utils/color_resource/color_resources.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../text/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,required this.text,
    this.isSelected=false,this.onTap, this.color, this.colorTxt, this.isGradient, this.textSize, this.textWeight, this.isVisit, this.isVisitStatus, this.colorBorder, this.width, this.height, this.icon}) : super(key: key);
  final String text;
  final Widget? icon;
  final double? textSize;
  final double? width;
  final double? height;
  final FontWeight? textWeight;
  final bool isSelected;
  final bool? isGradient;
  final bool? isVisit;
  final bool? isVisitStatus;
  final Color? color;
  final Color? colorBorder;
  final Color? colorTxt;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height:isVisit==true?40:isVisitStatus==true?22:height??50,
          width: isVisitStatus==true?85:width??MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isVisitStatus==true?20:5),
            border:isVisit==true? Border.all(color: ColorResources.primary):colorBorder!=null?Border.all(color: colorBorder!):null,
            color: isSelected?
            Theme.of(context).primaryColor:
            color,
            gradient:isGradient==true? LinearGradient(
                colors: [
                color!,
                ColorResources.grey
            ],
            begin:Alignment.centerRight,
              end: Alignment.centerRight
            ):null
          ),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon??const SizedBox(width: 0,),
              AppConstants.gapW10,
              Center(
                child: CustomText(text:
                  text,textAlign: TextAlign.center,
                  color: isSelected?
                       ColorResources.white
                      :colorTxt,
                  txtSize: textSize??17,
                  fontWeight:textWeight?? FontWeight.w600,
                  ),
              ),
            ],
          )),
    );
  }
}
