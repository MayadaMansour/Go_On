import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../utils/color_resource/color_resources.dart';
import '../text/custom_text.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.hintText,
    this.endPadding,
    this.isNeedHint = true,
    this.isPadding = true,
    this.suffix,
    this.readOnly = false,
    this.textInputType,
    this.validator,
    this.prefix, this.hintColor, this.text, this.isRegister,
    this.isSearch, this.text2, this.textColor, this.isComplain,
    this.height, this.isExpanded, this.gap, this.width,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? hintText;
  final String? text;
  final String? text2;
  final double? endPadding;
  final double? height;
  final bool? isNeedHint;
  final bool? isPadding;
  final bool? isRegister;
  final bool? isSearch;
  final Widget? suffix;
  final Widget? prefix;
  final bool? readOnly;
  final Color? hintColor;
  final Color? textColor;
  final bool? isComplain;
  final bool? isExpanded;
  final SizedBox? gap;
  final TextInputType? textInputType;
  final FormFieldValidator? validator;
  final double? width;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       if(text!=null) Row(
         mainAxisAlignment:MainAxisAlignment.spaceBetween,
         children: [
           CustomText(text: text!,txtSize: 14,fontWeight: FontWeight.w400,color: textColor??ColorResources.black),
           CustomText(text: text2??'',txtSize: 12,fontWeight: FontWeight.w400,color: ColorResources.grey),
         ],
       ),
        gap??const SizedBox(height: 0,),
        SizedBox(
          height: height,
          child: TextFormField(
            validator: validator,
            readOnly: readOnly!,
            controller: controller,
            keyboardType: textInputType,
            maxLines: isExpanded==true?null:1,
            minLines: null,
            expands: isExpanded==true?true:false,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: isComplain ==true?const EdgeInsets.all(0):null,
              hintStyle: TextStyle(
                color: hintColor,
              ),
              focusedBorder: isRegister==true?UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorResources.primary)):
              isSearch==true? InputBorder.none:
              OutlineInputBorder(
                  borderSide: BorderSide(color: ColorResources.primary,),),
              suffixIcon: suffix ?? const SizedBox(),
              prefixIcon: prefix,
              border:isRegister==true? UnderlineInputBorder(
                  borderSide: BorderSide(color: ColorResources.white)):
              isSearch==true? InputBorder.none:
              OutlineInputBorder(
                  borderSide: BorderSide(color: ColorResources.white),),
            ),
          ),
        ),
      ],
    );
  }
}
