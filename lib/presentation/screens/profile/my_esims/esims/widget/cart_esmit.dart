import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../utils/color_resource/color_resources.dart';
import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../../utils/images/images.dart';
import '../../../../../widgets/small_button/small_buttons.dart';
import '../../../../../widgets/text/custom_text.dart';
import '../../esims_details/esims_details_screen/esims_details.dart';


class CartEsmit extends StatelessWidget {

  const CartEsmit({super.key,  this.isActive, required this.title,});


  final bool? isActive;
  final String title;

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
                Expanded(child: CustomText(text: '$title'  ,txtSize: 18,fontWeight: FontWeight.w600,color: ColorResources.primary)),
              ],
            ),
            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.global),
                AppConstants.gapW10,
                const CustomText(text: 'ICCD : '),
                const Spacer(),
                const CustomText(text: '13887881514 '),

              ],
            ),
            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.global),
                AppConstants.gapW10,
                const CustomText(text: 'Purchace Data : '),
                const Spacer(),
                const CustomText(text: '18/2/2023'),
              ],
            ),
            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.global),
                AppConstants.gapW10,
                const CustomText(text: 'Statues : '),
                const Spacer(),
                const CustomText(text: 'Statues'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.only(left:10),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: SmallButton(text: 'Share', onTap: () {

                        },),
                      ),
                      SizedBox(
                        width:25,
                      ),
                      Expanded(
                        child: SmallButton(text: "MANGAGE",
                          onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const EsimsDetailsScreen(),));
                        },),
                      ),


                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
