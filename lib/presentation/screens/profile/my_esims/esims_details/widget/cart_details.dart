import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../../utils/images/images.dart';
import '../../../../../widgets/appBar/custom_app_bar.dart';
import '../../../../../widgets/text/custom_text.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 190,
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
          const CustomAppBar(text: 'Esims Details'),
          AppConstants.gap20,
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              children: [
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
                AppConstants.gap10,
                Row(
                  children: [
                    SvgPicture.asset(Images.global),
                    AppConstants.gapW10,
                    const CustomText(text: 'coverage : '),
                    const Spacer(),
                    const CustomText(text: 'Review'),
                  ],
                ),
              ],

            ),
          ),
          AppConstants.gap20,

        ],
      ),

    );
  }
}