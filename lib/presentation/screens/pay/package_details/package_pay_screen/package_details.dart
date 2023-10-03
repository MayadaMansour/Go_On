import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_on/presentation/screens/pay/package_details/package_pay/cubit_pay.dart';
import 'package:go_on/presentation/screens/pay/package_details/package_pay/pay_state.dart';

import '../../../../../utils/constants/app_constants.dart';
import '../../../../widgets/container/custom_container.dart';
import '../../../../widgets/text/custom_text.dart';
import '../../../profile/my_esims/esims_details/widget/cart_details.dart';
import '../../../profile/my_wallet/widget/cart_container.dart';
import '../../widget/pay_container.dart';

class PackageDetailsScreen extends StatelessWidget {
  const PackageDetailsScreen(
      {super.key,
      required this.text,
      this.img,
      this.onTap,
      required this.pricePackage,
      required this.priceDaysPackage,
      required this.priceGigaPackage,
      required this.dataGigaPackage,
      required this.validityDaysPackage});

  final String text;
  final String? img;
  final Function()? onTap;

  final String pricePackage;
  final String priceDaysPackage;
  final String priceGigaPackage;
  final String dataGigaPackage;
  final String validityDaysPackage;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PackageCubit, PackageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      PayContainer(
                        price: '30',
                        priceDays: 'Asia ',
                        priceGiga: '10 days , 3 GB',
                        coverage: 'Review',
                        data: '3 GB',
                        validity: '30 Days',
                        connectivity: '2G , 3G , 4G ',
                      ),
                      AppConstants.gap10,
                      SizedBox(
                        height: MediaQuery.of(context).size.height,
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
                                  separatorBuilder: (context, index) =>
                                      AppConstants.gap20,
                                  itemCount: 6),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.55,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
