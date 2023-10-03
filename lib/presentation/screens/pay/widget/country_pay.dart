import 'package:flutter/material.dart';

import '../../../../utils/constants/app_constants.dart';
import '../../../../utils/images/images.dart';
import '../../../widgets/appBar/custom_app_bar.dart';
import '../../../widgets/container/custom_container.dart';
import '../package_details/payment_dialog/dialog_payment.dart';


class PayDetailsCountryScreen extends StatelessWidget {
  const PayDetailsCountryScreen(
      {super.key,
      required this.text,
      this.img,
      this.onTap,
      this.isRegional,
      this.isDetails});

  final String text;
  final String? img;
  final Function()? onTap;
  final bool? isRegional;
  final bool? isDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CustomAppBar(
                    text: text, isHelp: isDetails == true ? false : true),
                Image(image: AssetImage(Images.asia)),
                AppConstants.gap20,
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DialogPayment()));
                            },
                            child: CustomContainer(
                                price: '50',
                                priceDays: '20',
                                priceGiga: '3',
                                dataDays: '20',
                                dataGiga: '3',
                                validityDays: '20',
                                validityGiga: '3',
                                isActive: index == 1 ? true : false),
                          ),
                      separatorBuilder: (context, index) => AppConstants.gap10,
                      itemCount: 6),
                ),
                AppConstants.gap10,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
