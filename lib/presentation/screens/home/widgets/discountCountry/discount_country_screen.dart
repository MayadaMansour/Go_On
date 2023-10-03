import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/presentation/widgets/text/custom_text.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/button/custom_button.dart';

class DiscountCountry extends StatelessWidget {
  const DiscountCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Stack(
                children: [
                  Image(image: AssetImage(Images.discountImg),),
                  CustomAppBar(text: '',),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppConstants.gap20,
                    const CustomText(text: 'Description',txtSize: 16,fontWeight: FontWeight.w600,),
                    AppConstants.gap20,
                    const CustomText(text: 'This year marks the 50th anniversary of the United Arab Emirates or the UAE. Located in the southeast of the Arabian Peninsula, squeezed between Oman and Saudia Arabia, this federation of seven emirate states was born in 1971. In the past five decades, it’s rapidly transformed from a quiet fishing backwater to one of the Middle East’s most important economic powerhouses. Most people have heard of Abu Dhabi and Dubai, but how much do you know about the rest of the UAE’s emirates Sharjah, Ras al-Khaimah, Ajman, Umm al-Quwain and Fujairah? We’ve cherry-picked a few interesting facts about the United Arab Emirates to get you started.',
                      txtSize: 13,textAlign: TextAlign.left),
                    AppConstants.gap20,
                    AppConstants.gap20,
                    CustomButton(
                        onTap: (){},
                        text: 'SUBSCRIBE PLAN',color: ColorResources.grey2,colorTxt: ColorResources.white,isSelected: true),
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
