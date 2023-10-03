import 'package:flutter/material.dart';
import 'package:go_on/presentation/widgets/appBar/custom_app_bar.dart';
import 'package:go_on/utils/constants/app_constants.dart';
import '../../../../../../../utils/color_resource/color_resources.dart';
import '../../../../widgets/button/custom_button.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/text/custom_text.dart';

class PackageDetails extends StatelessWidget {
  const PackageDetails({super.key, required this.price, required this.priceDays, required this.priceGiga, required this.dataDays, required this.dataGiga, required this.validityDays, required this.validityGiga, required this.connectivity, required this.coverage, required this.pricePackage, required this.priceDaysPackage, required this.priceGigaPackage, required this.dataGigaPackage, required this.validityDaysPackage, this.onTap, this.onTapBuy, required this.country,});

  final String price;
  final String priceDays;
  final String priceGiga;
  final String dataDays;
  final String dataGiga;
  final String validityDays;
  final String validityGiga;
  final String connectivity;
  final String coverage;
  final String country;

  final String pricePackage;
  final String priceDaysPackage;
  final String priceGigaPackage;
  final String dataGigaPackage;
  final String validityDaysPackage;

  final Function()? onTap;
  final Function()? onTapBuy;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const CustomAppBar(text: 'Package Details'),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomContainer(
                          price: price,
                          priceDays: '$country , $priceDays',
                          priceGiga: priceGiga,
                          dataGiga: dataGiga,
                          validityDays: validityDays,
                          connectivity: connectivity,
                          coverage:coverage
                      ),
                      AppConstants.gap20,
                      CustomButton(
                          onTap: onTapBuy,
                          text: 'BUY NOW 30\$',color: ColorResources.grey2,colorTxt: ColorResources.white,isSelected: true),
                      AppConstants.gap20,
                      CustomText(text: 'Top Packages',txtSize: 16,fontWeight: FontWeight.w600,color: ColorResources.black2),
                      AppConstants.gap20,
                      SizedBox(
                        height: MediaQuery.of(context).size.height*0.3,
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                  itemBuilder: (context, index) => InkWell(
                                    onTap: onTap,
                                    child: CustomContainer(
                                      price: pricePackage,
                                      priceDays: priceDaysPackage,
                                      priceGiga: priceGigaPackage,
                                      dataGiga: dataGigaPackage,
                                      validityDays: validityDaysPackage,
                                    ),
                                  ),
                                  separatorBuilder: (context, index) => AppConstants.gap20,
                                  itemCount: 6
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
