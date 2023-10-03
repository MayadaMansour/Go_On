import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/color_resource/color_resources.dart';
import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../../utils/images/images.dart';
import '../../../../../widgets/small_button/small_buttons.dart';
import '../../../../../widgets/text/custom_text.dart';
import '../esims_details_screen/esims_details.dart';

class CartEsmitDetails extends StatelessWidget {

  const CartEsmitDetails({super.key,  this.isActive, required this.price, required this.priceDays, required this.priceGiga,});

  final String price;
  final String priceDays;
  final String priceGiga;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color:isActive==true?ColorResources.primary:ColorResources.containerColor)
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: '$price\$' ,txtSize: 18,fontWeight: FontWeight.w600,color: ColorResources.primary),
                CustomText(text: '$priceDays Days , $priceGiga G',color: ColorResources.black),
              ],
            ),

            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.global),
                AppConstants.gapW10,
                const CustomText(text: 'Data : '),
                const Spacer(),
                const CustomText(text: '3 GB'),
              ],
            ),
            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.global),
                AppConstants.gapW10,
                const CustomText(text: 'Validity: '),
                const Spacer(),
                const CustomText(text: '10 Days'),
              ],
            ),
            AppConstants.gap10,
            Padding(
              padding: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.only(left:10),
                child: Row(
                  children: [
                    SmallButton(text: 'Details', onTap: () {

                    },),
                    SizedBox(
                      width:25,
                    ),
                    SmallButton(text: "Buy Now",
                      onTap: () {
                      },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
