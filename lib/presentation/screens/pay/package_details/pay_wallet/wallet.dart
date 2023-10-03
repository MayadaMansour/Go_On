import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/small_button/small_buttons.dart';

import '../../../../../utils/circular_seek_bar/circular_seek.dart';
import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/appBar/custom_app_bar.dart';
import '../../../../widgets/button/custom_button.dart';
import '../../../../widgets/text/custom_text.dart';
import '../../../home/home.dart';
import '../../../profile/my_esims/esims/esims_screen/esims_screen.dart';
import '../../../profile/my_wallet/mywallet_screen/wallet_screen.dart';
import '../../widget/country_pay.dart';
import '../../widget/wallet_container_pay.dart';

class WalletPayment extends StatefulWidget {
  const WalletPayment({super.key});

  @override
  State<WalletPayment> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<WalletPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  PaymentWalletContainer(),
                  AppConstants.gap15,
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleBar(progressNum: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: Center(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                '4/20 Day left',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF656565),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            width: 130,
                            height: 34,
                            decoration: ShapeDecoration(
                              color: Color(0xFFECF4FF),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Expires In',
                    style: TextStyle(
                      color: Color(0xFF414141),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppConstants.gap15,
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Row(
                        children: [
                          Expanded(child: SmallButton(text: "5 Days", onTap: () {})),
                          SizedBox(
                            width: 50,
                          ),
                          Expanded(child: SmallButton(text: "8 Hours", onTap: () {}))
                        ],
                      ),
                    ),
                  ),
                 AppConstants.gap20,
                  CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  const MyEsimsScreen()));
                      },
                      text: 'REVIEW MY ESIMS',
                      color: ColorResources.white,
                      colorTxt: ColorResources.primary,
                      isSelected: false),
                  AppConstants.gap15,
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const WalletScreen()));
                  },
                  text: 'ADD TO WALLET',
                  color: ColorResources.grey2,
                  colorTxt: ColorResources.white,
                  isSelected: true),




                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
