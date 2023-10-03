import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/appBar/custom_app_bar.dart';
import '../../../../widgets/text/custom_text.dart';

class CartWallet extends StatelessWidget {
  const CartWallet({super.key});


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
          const CustomAppBar(text: ' My Wallet'),
          AppConstants.gap20,
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: '750\$',txtSize: 30,color: ColorResources.primary),
                    FloatingActionButton(onPressed: (){},mini: true,child: const Icon(Icons.add,size: 40),)
                  ],
                ),
                AppConstants.gap10,
                CustomText(text: 'Available Wallet Balance',txtSize: 16,color: ColorResources.grey),
                AppConstants.gap20,
              ],

            ),
          ),
          AppConstants.gap20,

        ],
      ),

    );
  }
}