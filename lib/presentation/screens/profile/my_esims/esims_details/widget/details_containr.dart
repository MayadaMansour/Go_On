import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_on/presentation/widgets/small_button/small_buttons.dart';

import '../../../../../../utils/color_resource/color_resources.dart';
import '../../../../../../utils/constants/app_constants.dart';
import '../../../../../../utils/images/images.dart';
import '../../../../../widgets/text/custom_text.dart';
import '../../../../pay/package_details/package_pay_screen/package_details.dart';

class ListViewPackageContainer extends StatelessWidget {

  const ListViewPackageContainer({super.key, required this.price, required this.priceDays, required this.priceGiga, this.dataDays, required this.dataGiga, this.validityDays, this.validityGiga, this.minutes, this.sms, this.connectivity, this.country, this.coverage, this.isActive,});

  final String price;
  final String priceDays;
  final String priceGiga;
  final String? dataDays;
  final String dataGiga;
  final String? validityDays;
  final String? validityGiga;
  final String? minutes;
  final String? sms;
  final String? connectivity;
  final String? country;
  final String? coverage;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color:isActive==true?ColorResources.primary:ColorResources.white)
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
                dataDays!=null?
                CustomText(text: '$dataDays Days , $dataGiga GB'):CustomText(text: '$dataGiga GB'),
              ],
            ),
            AppConstants.gap10,
            Row(
              children: [
                SvgPicture.asset(Images.calender),
                AppConstants.gapW10,
                const CustomText(text: 'Validity : '),
                const Spacer(),
                validityGiga!=null?
                CustomText(text: '$validityDays Days , $validityGiga G'):CustomText(text: '$validityDays Days'),
              ],
            ),
            if(minutes!=null)
              AppConstants.gap10,
            if(minutes!=null)
              Row(
                children: [
                  SvgPicture.asset(Images.minutes),
                  AppConstants.gapW10,
                  const CustomText(text: 'Minutes : '),
                  const Spacer(),
                  CustomText(text: minutes!),
                ],
              ),
            if(sms!=null)
              AppConstants.gap10,
            if(sms!=null)
              Row(
                children: [
                  SvgPicture.asset(Images.sms),
                  AppConstants.gapW10,
                  const CustomText(text: 'SMS : '),
                  const Spacer(),
                  CustomText(text: sms!),
                ],
              ),
            if(connectivity!=null)
              AppConstants.gap10,
            if(connectivity!=null)
              Row(
                children: [
                  SvgPicture.asset(Images.connectivity),
                  AppConstants.gapW10,
                  const CustomText(text: 'Connectivity : '),
                  const Spacer(),
                  CustomText(text: connectivity!),
                ],
              ),
            if(country!=null)
              AppConstants.gap10,
            if(country!=null)
              Row(
                children: [
                  SvgPicture.asset(Images.country),
                  AppConstants.gapW10,
                  const CustomText(text: 'Country : '),
                  const Spacer(),
                  CustomText(text: country!),
                ],
              ),
            if(coverage!=null)
              AppConstants.gap10,
            if(coverage!=null)
              Row(
                children: [
                  SvgPicture.asset(Images.coverage),
                  AppConstants.gapW10,
                  const CustomText(text: 'Coverage : '),
                  const Spacer(),
                  CustomText(text: coverage!),
                ],
              ),
            AppConstants.gap20,
            Row(children: [
              SmallButton(text: "Details", onTap: (){}),
              Spacer(),
              SmallButton(text: "BUY NOW", onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PackageDetailsScreen(
                        text: 'PACKAGE DETAILS',
                        pricePackage: '50',
                        priceDaysPackage: ' Erop , 20',
                        priceGigaPackage: '3',
                        dataGigaPackage: '3 ',
                        validityDaysPackage: '20',
                      ),
                    ));
              },),

            ],),
          ],
        ),
      ),
    );
  }
}
