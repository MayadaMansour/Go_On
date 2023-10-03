import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';

import '../../../../utils/constants/app_constants.dart';
import '../../../../utils/images/images.dart';
import '../../../widgets/text/custom_text.dart';

class PaymentWalletContainer extends StatelessWidget {
  const PaymentWalletContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 150,
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
          const CustomAppBar(text: 'WALLET'),
          AppConstants.gap20,
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage(Images.electric),
                    ),
                    AppConstants.gapW10,
                    const Text(
                      'Service',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
                    Spacer(),
        Image(
          image: AssetImage(Images.wifi),
        ),
                    AppConstants.gapW10,
                    const Text(
                      'Speed ',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
                    Spacer(),
                    Image(
                      image: AssetImage(Images.rate),
                    ),
                    AppConstants.gapW10,
                    const Text(
                      'Provider',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
                  ],
                ),
                AppConstants.gap10,
                Row(
                  children: [
                    AppConstants.gapW10,
                    Text(
                      'Data',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
                    Spacer(),
                    const Text(
                      '3G',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
                    Spacer(),
                    const Text(
                      'AIS',
                      style: TextStyle(
                        color: Color(0xFF2776EA),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                        letterSpacing: -0.20,
                      ),
                    ),
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
