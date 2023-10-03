import 'package:flutter/material.dart';
import 'package:go_on/presentation/screens/home/home_screen.dart';

import '../../../../../utils/color_resource/color_resources.dart';
import '../../../../../utils/constants/app_constants.dart';
import '../../../../../utils/images/images.dart';
import '../../../../widgets/button/custom_button.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/textFeild/custom_text_field.dart';
import '../../../profile/my_esims/esims_details/esims_details_screen/esims_details.dart';
import '../../widget/country_list.dart';
import '../pay_wallet/wallet.dart';

class DialogPaymentDone extends StatelessWidget {
  const DialogPaymentDone(
      {super.key,
      required this.pricePackage,
      required this.priceDaysPackage,
      required this.priceGigaPackage,
      required this.dataGigaPackage,
      required this.validityDaysPackage});

  final String pricePackage;
  final String priceDaysPackage;
  final String priceGigaPackage;
  final String dataGigaPackage;
  final String validityDaysPackage;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: ShapeDecoration(
          color: Colors.white.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x0C000000),
            )
          ],
        ),
        child: AlertDialog(
          content: SizedBox(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Container(
                height: 550,
                width: 300,
                child: Expanded(
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).pop();
                              },
                              child: Align(
                                alignment: Alignment.topRight,
                                child: CircleAvatar(
                                  radius: 12.0,
                                  backgroundColor: Colors.blueAccent,
                                  child: Icon(Icons.close, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          AppConstants.gap20,
                          Expanded(
                            child: Image(
                              image: AssetImage(Images.ok),
                            ),
                          ),
                          AppConstants.gap20,
                          AppConstants.gap20,
                          Text(
                            'You have baid a package ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF414141),
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: -0.32,
                            ),
                          ),
                          AppConstants.gap20,
                          AppConstants.gap20,
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>  WalletPayment(),
                                    ));
                              },
                              child: Expanded(
                                child: CustomContainer(
                                  price: pricePackage,
                                  priceDays: priceDaysPackage,
                                  priceGiga: priceGigaPackage,
                                  dataGiga: dataGigaPackage,
                                  validityDays: validityDaysPackage,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>  WalletPayment(),
                                  ));
                            },
                            child: CustomButton(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>   WalletPayment()));
                                },
                                text: 'BACK TO HOME',
                                color: ColorResources.grey2,
                                colorTxt: ColorResources.white,
                                isSelected: true),
                          ),
                          AppConstants.gap15,
                          CustomButton(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  const EsimsDetailsScreen()));
                              },
                              text: 'ANOTHER PACKAGE',
                              color: ColorResources.white,
                              colorTxt: ColorResources.primary,
                              isSelected: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
