import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utils/color_resource/color_resources.dart';
import '../../../../utils/constants/app_constants.dart';
import '../../../../utils/images/images.dart';
import '../../../widgets/appBar/custom_app_bar.dart';
import '../../../widgets/button/custom_button.dart';
import '../../../widgets/text/custom_text.dart';
import '../../home/widgets/regional/regional.dart';
import '../../home/widgets/topDestination/details_screen.dart';
import '../package_details/payment_dialog/dialog_payment.dart';
import 'country_pay.dart';

class PayContainer extends StatelessWidget {
  const PayContainer({
    super.key,
    required this.price,
    required this.priceDays,
    required this.coverage,
    this.isActive,
    required this.data,
    required this.validity,
    required this.connectivity,
    required this.priceGiga,  this.image,
  });

  final String price;
  final String priceDays;
  final String priceGiga;

  final String? image;

  final String data;
  final String validity;

  final String connectivity;
  final String coverage;

  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 300,
      decoration: ShapeDecoration(
        color: Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
        ),
      ),
      child: Column(
        children: [
          const CustomAppBar(text: 'PACKAGE  DETAILS'),
          AppConstants.gap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  text: '$price\$',
                  txtSize: 18,
                  fontWeight: FontWeight.w600,
                  color: ColorResources.primary),
              CustomText(
                  text: '$priceDays  , $priceGiga ',
                  color: ColorResources.black),
            ],
          ),
          AppConstants.gap15,
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Images.global),
                    AppConstants.gapW10,
                    const CustomText(text: 'Data : '),
                    const Spacer(),
                    CustomText(
                      text: data,
                    ),
                  ],
                ),
                AppConstants.gap10,
                Row(
                  children: [
                    SvgPicture.asset(Images.global),
                    AppConstants.gapW10,
                    const CustomText(text: 'Validity : '),
                    const Spacer(),
                    CustomText(text: validity),
                  ],
                ),
                AppConstants.gap10,
                Row(
                  children: [
                    SvgPicture.asset(Images.global),
                    AppConstants.gapW10,
                    const CustomText(text: 'Connectivity : '),
                    const Spacer(),
                    CustomText(text: connectivity),
                  ],
                ),
                AppConstants.gap10,
                Row(
                  children: [
                    SvgPicture.asset(Images.global),
                    AppConstants.gapW10,
                    const CustomText(text: 'coverage : '),
                    const Spacer(),
                    CustomText(text: coverage),
                  ],
                ),
                AppConstants.gap20,
                CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  const DialogPayment()));
                    },
                    text: 'BUY NOW',
                    color: ColorResources.grey2,
                    colorTxt: ColorResources.white,
                    isSelected: true),
              ],
            ),
          ),
          AppConstants.gap20,
        ],
      ),
    );
  }
}
