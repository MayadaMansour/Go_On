import 'package:flutter/material.dart';
import 'package:go_on/presentation/screens/pay/package_details/package_pay_screen/package_details.dart';
import 'package:go_on/presentation/widgets/button/custom_button.dart';
import 'package:go_on/utils/constants/app_constants.dart';

import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/appBar/custom_app_bar.dart';
import '../../../../widgets/text/custom_text.dart';

class PayScreen extends StatelessWidget {
  const PayScreen({super.key, this.textDescription, this.onTap});

  final String? textDescription;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage(Images.payCountry),
                  ),
                  CustomAppBar(
                    text: '',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 220),
                      child: CustomText(
                        text: 'Description',
                        txtSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppConstants.gap20,
                    Text(
                      'This year marks the 50th anniversary of the United Arab Emirates or the UAE. Located in the southeast of the Arabian Peninsula, squeezed between Oman and Saudia Arabia, this federation of seven emirate states was born in 1971. In the past five decades, it’s rapidly transformed from a quiet fishing backwater to one of the Middle East’s most important economic powerhouses. Most people have heard of Abu Dhabi and Dubai, but how much do you know about the rest of the UAE’s emirates Sharjah, Ras al-Khaimah, Ajman, Umm al-Quwain and Fujairah? We’ve cherry-picked a few interesting facts about the United Arab Emirates to get you started.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFF414141),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    AppConstants.gap20,
                    AppConstants.gap20,
                    AppConstants.gap20,
                    AppConstants.gap20,
                    AppConstants.gap20,
                    CustomButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PackageDetailsScreen(
                                  text: 'PACKAGE DETAILS',
                                  pricePackage: '50',
                                  priceDaysPackage: ' Erop , 20',
                                  priceGigaPackage: '3',
                                  dataGigaPackage: '3 ',
                                  validityDaysPackage: '20',
                                ),
                              ));
                        },
                        text: 'Package Details',
                        color: ColorResources.grey2,
                        colorTxt: ColorResources.white,
                        isSelected: true),
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
